import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/favorites_image.png', // Placeholder image for favorites
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Your Favorites',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
