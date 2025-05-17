import 'package:flutter/material.dart';
import 'package:photosphere_frontend/features/auth/presentation/widgets/inputFields.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text controllers
  final emailTextContoller = TextEditingController();
  final passwordTextContoller = TextEditingController();
  final usernameTextContoller = TextEditingController();
  final confirmPasswordTextContoller = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Padding(
            key: _formkey,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                // app name
                const SizedBox(height: 25),

                const Text(
                  'R E G I S T E R',
                  style: TextStyle(fontSize: 20),
                ),

                const SizedBox(height: 50),

                // email and password
                MyTextField(
                  controller: usernameTextContoller,
                  hintText: 'Username',
                  obscureText: false,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a username';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 25),

                MyTextField(
                  controller: emailTextContoller,
                  hintText: 'Email',
                  obscureText: false,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
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
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 25),

                MyTextField(
                  controller: confirmPasswordTextContoller,
                  hintText: 'Confirm Password',
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    return null;
                  },
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () async {
                        if (_formkey.currentState!.validate()) {
                          // Perform registration logic
                        }


                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}