import 'package:flutter/material.dart';

class MyAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: John Doe'),
            SizedBox(height: 8),
            Text('Mobile: +1234567890'),
            SizedBox(height: 8),
            Text('Address: 123 Main St, City, Country'),
            SizedBox(height: 8),
            Text('Email: john.doe@example.com'),
            SizedBox(height: 8),
            Text('Payment Mode: Credit Card'),
          ],
        ),
      ),
    );
  }
}
