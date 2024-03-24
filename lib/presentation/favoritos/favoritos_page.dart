import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget {
  const FavoritosPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4, // Cambia la cantidad de tarjetas según tus necesidades
        itemBuilder: (context, index) {
          return _buildCard(
              Icons.star, 'Tarjeta $index', 'Descripción de la tarjeta $index');
        },
      ),
    );
  }

  Widget _buildCard(IconData icon, String title, String description) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 48, color: Colors.blue),
            SizedBox(height: 8),
            Text(title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text(description,
                style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
