/*

Auth Page: Determines which page to show based on auth state

*/
import 'package:flutter/material.dart';
import 'package:photosphere_frontend/features/auth/presentation/pages/loginPage.dart';
import 'package:photosphere_frontend/features/auth/presentation/pages/registerPage.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();

}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;
  
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        togglePages: togglePages,
      );
    } else {
      return RegisterPage(
        togglePages: togglePages,
      );
    }
  }
}