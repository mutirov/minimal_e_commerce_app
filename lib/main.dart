import 'package:e_commerce_shop/pages/favorite_page.dart';
import 'package:e_commerce_shop/pages/home_page.dart';
import 'package:e_commerce_shop/pages/profile_page.dart';
import 'package:e_commerce_shop/providers/card_provider.dart';
import 'package:e_commerce_shop/providers/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => CardProvider()),
      ],
      child: MaterialApp(
        title: 'E-Commerce Shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const BottomNavBar(),
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List screens = [
      const HomePage(),
      const FavoritePage(),
      const ProfilePage(),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text('E-Commerce Shop'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
      ],),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
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
}