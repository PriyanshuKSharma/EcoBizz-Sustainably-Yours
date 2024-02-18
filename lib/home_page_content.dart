import 'package:flutter/material.dart';
import 'package:EcoBizz/product.dart'; // Importing the Product class

class HomePageContent extends StatelessWidget {
  final List<Product> products; // Define the products list as a field

  // Constructor to receive the products list
  HomePageContent({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Products'), // Name of the app
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
          Container(
            height: 50, // Specify a fixed height for the SingleChildScrollView
            child: SingleChildScrollView(
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
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Handle product tap
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(products[index].image),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                products[index].title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '\$${products[index].price}',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
