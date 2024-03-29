import 'package:flutter/material.dart';
import 'package:EcoBizz/product.dart';

class FavoritesPage extends StatelessWidget {
  final List<Product> favoriteItems;

  const FavoritesPage({super.key, required this.favoriteItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: Center(
        child: favoriteItems.isNotEmpty
            ? ListView.builder(
                itemCount: favoriteItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          favoriteItems[index].image,
                          width: 50, // Set width as per requirement
                          height: 50, // Set height as per requirement
                        ),
                        const SizedBox(width: 10),
                        Text(favoriteItems[index].title),
                      ],
                    ),
                  );
                },
              )
            : const Text('No favorite items'),
      ),
    );
  }
}

