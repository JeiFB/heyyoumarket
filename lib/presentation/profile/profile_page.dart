import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              // backgroundImage: AssetImage('assets/tu_imagen_de_perfil.png'),
              // Cambia 'assets/tu_imagen_de_perfil.png' por la ruta correcta de tu imagen
            ),
            const SizedBox(height: 20),
            const Text(
              'Nombre de Usuario',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Correo Electrónico: usuario@example.com',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción para editar el perfil
              },
              child: const Text('Editar Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
