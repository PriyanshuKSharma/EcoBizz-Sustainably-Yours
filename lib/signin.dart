import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _emailValid = true;
  bool _passwordValid = true;

  void _signIn() {
    setState(() {
      // Perform email validation
      _emailValid = _emailController.text.contains('@');

      // Perform password validation
      _passwordValid = _passwordController.text.length >= 8;

      if (_emailValid && _passwordValid) {
        // If both email and password are valid, navigate to the home page
        Navigator.pushReplacementNamed(context, '/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                errorText: _emailValid ? null : 'Please enter a valid email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                errorText:
                    _passwordValid ? null : 'Password must be at least 8 characters long',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _signIn,
              child: Text('Sign In'),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                // Navigate to sign-up page
              },
              child: Text(
                "Don't have an account? Sign Up",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
