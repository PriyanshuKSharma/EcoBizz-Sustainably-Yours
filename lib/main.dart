import 'package:flutter/material.dart';
import 'package:EcoBizz/home_page.dart'; // Importing the HomePage class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      home: HomePage(), // Set the home page of the app
    );
  }
}
