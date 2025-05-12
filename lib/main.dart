import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photosphere',
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      home: const TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon( 
              onPressed:() {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const ARCaptureScreen(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

