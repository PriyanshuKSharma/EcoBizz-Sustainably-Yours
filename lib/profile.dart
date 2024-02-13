import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'My Account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildAccountInfoCard(context),
            SizedBox(height: 20),
            _buildSection('Settings'),
            _buildSection('My Orders'),
            _buildSection('Shopping Points'),
            _buildSection('Offers'),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title) {
    return ListTile(
      title: Text(title),
      onTap: () {
        // Navigate to the respective section
      },
    );
  }

  Widget _buildAccountInfoCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: John Doe',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Mobile: +1234567890',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Address: 123 Main St, City',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Email: john@example.com',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Payment Mode: Credit Card',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
