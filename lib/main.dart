import 'package:ai/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      home: Builder(
        builder: (context) {
          // Access screen size using MediaQuery
          final screenSize = MediaQuery.of(context).size;
          final screenWidth = screenSize.width;
          final screenHeight = screenSize.height;

          return const Scaffold(
            body: Login(),
          );
        },
      ),
    );
  }
}
