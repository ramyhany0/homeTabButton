import 'package:flutter/material.dart';

void main() {
  runApp(HomeP());
}

class HomeP extends StatefulWidget {
  @override
  State<HomeP> createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  int index = 0;
  final pages = [
    Center(
      child: Text(
        "page 1",
        style: TextStyle(fontSize: 37),
      ),
    ),
    Center(
      child: Text(
        "page 2",
        style: TextStyle(fontSize: 37),
      ),
    ),
    Center(
      child: Text(
        "page 3",
        style: TextStyle(fontSize: 37),
      ),
    ),
    Center(
      child: Text(
        "page 4",
        style: TextStyle(fontSize: 37),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[index],
        bottomNavigationBar: NavigationBar(
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            height: 70,
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: "Home",
              ),
              NavigationDestination(
                icon: Icon(Icons.category_outlined),
                selectedIcon: Icon(Icons.category),
                label: "Categories",
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite_outline),
                selectedIcon: Icon(Icons.favorite),
                label: "Favorites",
              ),
              NavigationDestination(
                icon: Icon(Icons.settings_outlined),
                selectedIcon: Icon(Icons.settings),
                label: "Settings",
              ),
            ]),
      ),
    );
  }
}
