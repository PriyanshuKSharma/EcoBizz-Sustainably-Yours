import 'package:flutter/material.dart';
import 'package:EcoBizz/home_page.dart'; // Importing the HomePage class
import 'package:EcoBizz/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'EcoBizz',
      home: HomePage(), // Set the home page of the app
    );
  }
}
