import 'package:flutter/material.dart';
import 'package:heyyoumarket/presentation/favoritos/favorites_page.dart';
import 'package:heyyoumarket/presentation/home/home_page_content.dart';
import 'package:heyyoumarket/presentation/productos/products_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePageContent(),
      const ProductsPage(),
      const FavoritesPage(),
      // const ProfilePage(),
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 248, 252),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.bento),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.line_style_sharp),
              label: 'Productos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ]),
    );
  }
}
