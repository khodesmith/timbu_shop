import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.red),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
            onPressed: () {
              // Handle cart action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                Center(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu0o0Y_hgZB0YQTqW3sGqVUgK9AmVrelj6gw&s',
                    height: 200,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                    SizedBox(width: 8),
                    CircleAvatar(radius: 5, backgroundColor: Colors.black),
                    SizedBox(width: 8),
                    CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                  ],
                ),
                const SizedBox(height: 16.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Multivitamins for men',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Text(
                      'Multivitamins',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove_circle_outline),
                          onPressed: () {
                            // Decrease quantity
                          },
                        ),
                        const Text('1'),
                        IconButton(
                          icon: const Icon(Icons.add_circle_outline),
                          onPressed: () {
                            // Increase quantity
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Row(
                      children: List.generate(5, (index) {
                        return const Icon(Icons.star,
                            color: Colors.amber, size: 20);
                      }),
                    ),
                    const SizedBox(width: 8.0),
                    const Text('(320 Review)'),
                    const Spacer(),
                    const Text(
                      'Available in stock',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Description',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Get a little lift from Men\'s Multivitamins, featuring a comprehensive blend of essential vitamins and minerals tailored for men\'s health. Experience sustained energy and overall well-being throughout the day. Men\'s Multivitamins offer a carefully formulated combination of nutrients to support immune function, muscle health, and mental clarity. This unique formulation makes a fresh statement for improved daily vitality and optimal performance.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  'Total Price',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  '₦1,198.00',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton.icon(
              onPressed: () {
                // Add to cart functionality
              },
              icon: const Icon(Icons.shopping_bag),
              label: const Text('Add to cart'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                // primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }
}
