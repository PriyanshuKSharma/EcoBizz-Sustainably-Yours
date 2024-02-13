import 'package:flutter/material.dart';
import 'package:EcoBizz/cart.dart';
import 'package:EcoBizz/profile.dart';
import 'package:EcoBizz/favorites.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePageContent(), // Your home page content
    CartPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('EcoBizzz'), // Name of the app
          ],
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
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle action for the first button
                  },
                  child: Text('Toy'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle action for the second button
                  },
                  child: Text('Electronics'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle action for the third button
                  },
                  child: Text('Clothing'),
                ),
                // Add more buttons as needed
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Background color of the BottomNavigationBar
        selectedItemColor: Colors.green, // Color of the selected item
        unselectedItemColor: Colors.black, // Color of the unselected items
        selectedLabelStyle: TextStyle(color: Colors.black), // Color of the labels for selected items
        unselectedLabelStyle: TextStyle(color: Colors.black), // Color of the labels for unselected items
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 3) { // ProfilePage is at index 3
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
      }
    });
  }
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page Content'),
    );
  }
}
