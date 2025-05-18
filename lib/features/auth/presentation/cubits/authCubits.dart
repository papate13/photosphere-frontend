/*

Auth Cubit: State Management

*/

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photosphere_frontend/features/auth/domain/entities/user.dart';
import 'package:photosphere_frontend/features/auth/domain/repositories/authrepo.dart';
import 'package:photosphere_frontend/features/auth/presentation/cubits/authStates.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo authRepo;
  AppUser? _currentUser;

  AuthCubit(this.authRepo) : super(AuthInital());

  // Check if user is authenticated
  void checkAuth() async {
    final AppUser? user = await authRepo.getCurrentUser();

    if (user != null) {
      _currentUser = user;
      emit(Authenticated(user));
    } else {
      emit(Unauthenticated());
    }
  }

  AppUser? get currentUser => _currentUser;

  // if authenticated, emit Authenticated state
  // if not authenticated, emit Unauthenticated state
  Future<void> login(String email, String password) async {
    try {
      emit(AuthLoading());
      final user = await authRepo.loginWithEmailAndPassword(email, password);

      if (user != null) {
        _currentUser = user;
        emit(Authenticated(user));
      } else {
        emit(Unauthenticated());
      }
    } catch (e) {
      emit(AuthErrors(e.toString()));
    }
  }

  // Register User
  Future<void> register(String name, String email, String password) async {
    try {
      emit(AuthLoading());
      final user = await authRepo.registerWithEmailAndPassword(name, email, password);

      if (user != null) {
        _currentUser = user;
        emit(Authenticated(user));
      } else {
        emit(Unauthenticated());
      }
    } catch (e) {
      emit(AuthErrors(e.toString()));
    }
  }

  // logout
  Future<void> logout() async {
    try {
      emit(AuthLoading());
      await authRepo.logout();
      _currentUser = null;
      emit(Unauthenticated());
    } catch (e) {
      emit(AuthErrors(e.toString()));
    }
  } 
}