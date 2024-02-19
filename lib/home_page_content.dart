import 'package:flutter/material.dart';
import 'package:EcoBizz/product.dart'; 
import 'package:EcoBizz/cart.dart' as Cart; 
import 'package:EcoBizz/favorites.dart' as Fav; 

class HomePageContent extends StatefulWidget {
  final List<Product> products;
  final List<Product> cartItems;
  final List<Product> favoriteItems;

  HomePageContent({
    required this.products,
    required this.cartItems,
    required this.favoriteItems,
  });

  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  TextEditingController searchController = TextEditingController();
  List<Product> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts.addAll(widget.products);
  }

  void filterProducts(String query) {
    filteredProducts.clear();
    if (query.isNotEmpty) {
      filteredProducts.addAll(widget.products.where((product) => product.title.toLowerCase().contains(query.toLowerCase())));
    } else {
      filteredProducts.addAll(widget.products);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Product'), 
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  controller: searchController,
                  onChanged: (value) {
                    filterProducts(value);
                  },
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: filteredProducts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Handle product tap
            },
            child: Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(
                      filteredProducts[index].image, 
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          filteredProducts[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$${filteredProducts[index].price}',
                          style: const TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            widget.cartItems.add(filteredProducts[index]);
                          });
                        },
                        icon: Icon(Icons.add_shopping_cart),
                        tooltip: 'Add to Cart',
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            widget.favoriteItems.add(filteredProducts[index]);
                          });
                        },
                        icon: Icon(Icons.favorite),
                        tooltip: 'Add to Favorites',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
