import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Perfil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              // backgroundImage: AssetImage('assets/tu_imagen_de_perfil.png'),
              // Cambia 'assets/tu_imagen_de_perfil.png' por la ruta correcta de tu imagen
            ),
            SizedBox(height: 20),
            Text(
              'Nombre de Usuario',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Correo Electrónico: usuario@example.com',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción para editar el perfil
              },
              child: Text('Editar Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
