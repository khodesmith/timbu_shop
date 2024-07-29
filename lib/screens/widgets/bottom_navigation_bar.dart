import 'package:flutter/material.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
