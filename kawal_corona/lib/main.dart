import 'package:flutter/material.dart';
import 'package:kawal_corona/pages/register_screen.dart';
import 'package:kawal_corona/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kawal Corona',
      home: RegisterScreen(),
    );
  }
}
