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
            SizedBox(height: 16),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile_avatar.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              'Sinister Xi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'sinisterxi@rndmail.com',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle upgrade to PRO
              },
              child: Text('Upgrade to PRO'),
            ),
            SizedBox(height: 32),
            ListTile(
              leading: Icon(Icons.security),
              title: Text('Privacy'),
              onTap: () {
                // Navigate to privacy section
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Purchase History'),
              onTap: () {
                // Navigate to purchase history section
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
              onTap: () {
                // Navigate to help & support section
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Navigate to settings section
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Invite a Friend'),
              onTap: () {
                // Navigate to invite a friend section
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Handle logout action
              },
            ),
          ],
        ),
      ),
    );
  }
}
