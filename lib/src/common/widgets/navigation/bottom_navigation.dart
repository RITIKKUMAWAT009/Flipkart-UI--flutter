import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(elevation: 20,backgroundColor: Colors.blue,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ), BottomNavigationBarItem(
          icon: Icon(Icons.manage_search_outlined),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Account',
        ), BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.blue.shade900,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.black,
      onTap: (index){},
    );
  }
}
