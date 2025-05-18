import 'package:photosphere_frontend/features/auth/domain/entities/user.dart';

abstract class AuthState {}

// inital
class AuthInital extends AuthState {}

// loading...
class AuthLoading extends AuthState {}

// authenticated
class Authenticated extends AuthState {
  final AppUser user;
  Authenticated(this.user);
}

// unauthenticated
class Unauthenticated extends AuthState {}

// errors..
class AuthErrors extends AuthState {
  final String message;
  AuthErrors(this.message);
}