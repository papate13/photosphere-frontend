import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:photosphere_frontend/features/auth/presentation/pages/loginPage.dart';
import 'package:photosphere_frontend/firebase_options.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  await dotenv.load();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photosphere',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}