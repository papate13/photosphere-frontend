import 'package:flutter/material.dart';
import 'package:photosphere_frontend/features/auth/presentation/pages/registerPage.dart';
import 'package:photosphere_frontend/features/auth/presentation/widgets/inputFields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controllers
  final emailTextContoller = TextEditingController();
  final passwordTextContoller = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      body: SafeArea(
        child: Center(
          child: Padding(
            key: _formkey,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
            
            children: [
              // Logo
              const SizedBox(height: 200),
              
              const Icon(
                Icons.lock,
                size: 100,
              ),

              // app name
              const SizedBox(height: 25),

              const Text(
                'P H O T O S P H E R E',
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height:50),

              // email and password
              MyTextField(
                controller: emailTextContoller, 
                hintText: 'Email', 
                obscureText: false,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 25),

              MyTextField(
                controller: passwordTextContoller, 
                hintText: 'Password', 
                obscureText: true,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),


              // forgot password              
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {}, 
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ))
                  ),
                ]
              ),

              // login button
              ElevatedButton(
                    onPressed: () {}, 
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      )
                    )
              ),

              // Register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () { 
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RegisterPage())
                      );
                    }, 
                    child: Text(
                      'Register Here!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )
                    )
                  )
                ]
              )
            ],
          ),
        ),
      ),
    ));
  }
}