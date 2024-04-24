import 'package:flutter/material.dart';
import 'package:heyyoumarket/presentation/carrito/carrito_page.dart';
import 'package:heyyoumarket/presentation/comparador/comparador_page.dart';
import 'package:heyyoumarket/presentation/favoritos/favoritos_page.dart';
import 'package:heyyoumarket/presentation/home/home_page_content.dart';
import 'package:heyyoumarket/presentation/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> currenTab = [
      const HomePageContent(),
      const FavoritosPage(),
      const ComparadorPage(),
      const CarritoPage(),
      const ProfilePage()
    ];
    List<String> names = ['Home', 'Favoritos', 'Comparar', 'Carrito', 'perfil'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text(
          names[_currentIndex],
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: currenTab[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 24,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favoritos',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.compare_arrows,
              ),
              label: 'Comparador',
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Carrito',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Perfil',
            backgroundColor: Colors.greenAccent,
          ),
        ],
      ),
    );
  }
}
