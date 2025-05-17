/*

Auth Repository Interface

*/
import 'package:photosphere_frontend/features/auth/domain/entities/user.dart';

abstract class AuthRepo {
  Future<AppUser?> loginWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<AppUser?> registerWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> logout();
  
  Future<AppUser?> getCurrentUser();

}
