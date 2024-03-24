import 'package:flutter/material.dart';

class ComparadorPage extends StatelessWidget {
  const ComparadorPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comparador'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.builder(
          itemCount: 2, // Número de tarjetas que deseas mostrar
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                children: <Widget>[
                  // Agrega la imagen o contenido relevante para la comparación
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/tu_imagen.png'), // Ruta de la imagen
                          fit: BoxFit.cover, // Ajuste de la imagen
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Nombre del elemento', // Cambia esto por el nombre real
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
