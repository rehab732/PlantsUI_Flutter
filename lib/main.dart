import 'package:flutter/material.dart';
import 'package:plants/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Plants',
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
