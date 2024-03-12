import 'package:flutter/material.dart';
import 'package:infraciones/menuScreean.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  State<MyApp > createState() => _MainAppState();
}

class _MainAppState extends State<MyApp > {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: menuNav(),
    );
  }
}