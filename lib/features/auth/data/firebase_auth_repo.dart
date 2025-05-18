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
        email: email,
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
      throw Exception('Error: $e');
    }

    return null;
  }

  @override
  Future<AppUser?> registerWithEmailAndPassword(String email, String password) async { 
    try {
      UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      AppUser user = AppUser(
        uid: userCredential.user!.uid,
        email: email,
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
      throw Exception('Error: $e');
    }

    return null;
  }

  @override
  Future<void> logout() async {
    await firebaseAuth.signOut();
  }

  @override
  Future<AppUser?> getCurrentUser() async {
    final firebaseUser = firebaseAuth.currentUser;

    if(firebaseUser == null) {
      return null;
    }

    return AppUser(
      uid: firebaseUser.uid,
      email: firebaseUser.email!,
      name: '',
    );
  }
}