import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 16),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile_avatar.jpg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Priyanshu K Sharma',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'sinisterxi@rndmail.com',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle upgrade to PRO
              },
              child: const Text('Upgrade to PRO'),
            ),
            const SizedBox(height: 32),
            ListTile(
              leading: const Icon(Icons.security),
              title: const Text('Privacy'),
              onTap: () {
                // Navigate to privacy section
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Purchase History'),
              onTap: () {
                // Navigate to purchase history section
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help & Support'),
              onTap: () {
                // Navigate to help & support section
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Navigate to settings section
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('Invite a Friend'),
              onTap: () {
                // Navigate to invite a friend section
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
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
