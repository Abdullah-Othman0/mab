import 'package:flutter/material.dart';
import 'package:mab/screens/register/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Register(),
      debugShowCheckedModeBanner: false,
    );
  }
}
