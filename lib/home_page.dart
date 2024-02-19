import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:EcoBizz/product.dart'; 
import 'package:EcoBizz/cart.dart' as Cart; 
import 'package:EcoBizz/favorites.dart' as Fav; 
import 'package:EcoBizz/home_page_content.dart'; 
import 'package:EcoBizz/profile.dart'; // Import the ProfilePage

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> cartItems = [];
  List<Product> favoriteItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            // Handle tapping on app title if needed
            Navigator.pop(context); // Navigate back to the home page content
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('EcoBizzz'),
            ],
          ),
        ),
      ),
      body: HomePageContent(
        products: products, // Assuming `products` is defined somewhere
        cartItems: cartItems,
        favoriteItems: favoriteItems,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 50.0,
        backgroundColor: Colors.blueAccent,
        items: const <Widget>[
          Icon(Icons.shopping_cart, size: 20), // Cart button
          Icon(Icons.favorite, size: 20), // Favorites button
          Icon(Icons.person, size: 20), // Profile button
        ],
        onTap: (index) {
          setState(() {
            if (index == 0) {
              // Navigate to the cart page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart.CartPage(cartItems: cartItems)),
              );
            } else if (index == 1) {
              // Navigate to the favorites page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Fav.FavoritesPage(favoriteItems: favoriteItems)),
              );
            } else if (index == 2) {
              // Navigate to the profile page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            }
          });
        },
      ),
    );
  }
}
