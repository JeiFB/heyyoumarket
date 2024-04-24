import 'package:flutter/material.dart';

class ComparadorPage extends StatelessWidget {
  const ComparadorPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comparador'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.builder(
          itemCount: 2, // Número de tarjetas que deseas mostrar
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Dos columnas
            childAspectRatio:
                1.0, // Relación de aspecto (ancho/alto) de las tarjetas
          ),
          itemBuilder: (BuildContext context, int index) {
            // Aquí puedes personalizar el contenido de cada tarjeta
            return Card(
              elevation: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Agrega la imagen o contenido relevante para la comparación
                  // Expanded(
                  //   child: Container(
                  //     decoration: const BoxDecoration(
                  //       image: DecorationImage(
                  //         image: AssetImage(
                  //             'assets/sugar.png'), // Ruta de la imagen
                  //         fit: BoxFit.cover, // Ajuste de la imagen
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Nombre del producto', // Cambia esto por el nombre real
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
