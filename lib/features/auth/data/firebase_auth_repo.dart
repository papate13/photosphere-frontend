import 'package:firebase_auth/firebase_auth.dart';
import 'package:photosphere_frontend/features/auth/domain/entities/user.dart';
import 'package:photosphere_frontend/features/auth/domain/repositories/authrepo.dart';

class FirebaseAuthRepo implements AuthRepo {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Future<AppUser?> loginWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      AppUser user = AppUser(
        uid: userCredential.user!.uid,
        email: userCredential.user!.email!,
        name: '',
      );

      return user;


    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      } else if (e.code == 'invalid-email') {
        print('The email address is badly formatted.');
      } else if (e.code == 'user-disabled') {
        print('User account has been disabled.');
      } else if (e.code == 'operation-not-allowed') {
        print('Email/password accounts are not enabled.');
      } else {
        print(e.message);
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Future<AppUser?> registerWithEmailAndPassword(String email, String password) async { //TODO: LEFT OFF HERE 
    try {
      UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      AppUser user = AppUser(
        uid: userCredential.user!.uid,
        email: userCredential.user!.email!,
        name: '',
      );

      return user;


    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      } else if (e.code == 'invalid-email') {
        print('The email address is badly formatted.');
      } else if (e.code == 'user-disabled') {
        print('User account has been disabled.');
      } else if (e.code == 'operation-not-allowed') {
        print('Email/password accounts are not enabled.');
      } else {
        print(e.message);
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Future<AppUser?> logout(String email, String password) async {
    //todo
    throw UnimplementedError();
  }

  @override
  Future<AppUser?> getCurrentUser(String email, String password) async {
    //todo
    throw UnimplementedError();
  }
}