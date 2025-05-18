/*

Auth Repository Interface

*/
import 'package:photosphere_frontend/features/auth/domain/entities/user.dart';

abstract class AuthRepo {
  Future<AppUser?> loginWithEmailAndPassword(
    String email,
    String password,
  );

  Future<AppUser?> registerWithEmailAndPassword(
    String email,
    String password,
  );

  Future<void> logout();
  
  Future<AppUser?> getCurrentUser();

}
