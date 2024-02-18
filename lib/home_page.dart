import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:EcoBizz/cart.dart';
import 'package:EcoBizz/profile.dart';
import 'package:EcoBizz/favorites.dart';
import 'package:EcoBizz/product.dart';
import 'package:EcoBizz/home_page_content.dart'; // Importing HomePageContent class

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Widget> _pages; // Declare _pages as late

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePageContent(products: products), // Your home page content
      CartPage(),
      FavoritesPage(),
      ProfilePage(),
    ];
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = 0; // Navigate to the home page
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('EcoBizzz'), // Name of the app
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search), // Search icon
            onPressed: () {
              // Handle search action
            },
          ),
          SizedBox(width: 10), // Add some space between the search icon and the edge of the screen
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 50.0,
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.shopping_cart, size: 20), // Cart button
          Icon(Icons.favorite, size: 20), // Favorites button
          Icon(Icons.person, size: 20), // Profile button
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index + 1;
          });
        },
      ),
    );
  }
}
