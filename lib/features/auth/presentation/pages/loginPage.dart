import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photosphere_frontend/features/auth/presentation/cubits/authCubits.dart';
import 'package:photosphere_frontend/features/auth/presentation/widgets/inputFields.dart';

class LoginPage extends StatefulWidget {
  final void Function()? togglePages;

  const LoginPage({super.key, required this.togglePages});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controllers
  final emailTextContoller = TextEditingController();
  final passwordTextContoller = TextEditingController();

  //login button pressed
  void loginButtonPressed() {
    final String email = emailTextContoller.text;
    final String password = passwordTextContoller.text;

    //auth cubit
    final authCubit = context.read<AuthCubit>();

    if (email.isNotEmpty && password.isNotEmpty) {
      authCubit.login(email, password);
    } 
    
    else {
      // show error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter your email and password'),
        ),
      );
    }
  }

  //clean
  @override
  void dispose() {
    emailTextContoller.dispose();
    passwordTextContoller.dispose();
    super.dispose();
  }

  // build ui
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      body: SafeArea(
        child: Center(
          child: Padding(
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
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),

                  const SizedBox(width: 10),

                  GestureDetector(
                      onTap: widget.togglePages,
                      child: const Text(
                        'Register Here!',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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