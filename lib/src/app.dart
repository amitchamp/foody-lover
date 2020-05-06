import 'package:flutter/material.dart';

// Custom widget
import './screens/homepage_screen.dart';
import './screens/food_list_screen.dart';
import './screens/restaurant_list_screen.dart';
import './screens/cart_screen.dart';
import './screens/profile_screen.dart';

class App extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentPage = 0;
  List<Widget> _screens = [
    HomepageScreen(),
    RestaurantListScreen(),
    CartScreen(),
    FoodListScreen(),
    ProfileScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _screens[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        currentIndex: _currentPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            title: Text("Discover"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Cart"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favourite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
