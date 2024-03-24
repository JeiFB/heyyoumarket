import 'package:flutter/material.dart';

class CarritoPage extends StatelessWidget {
  const CarritoPage({Key? key});

  @override
  Widget build(BuildContext context) {
    // Simulación de datos del carrito (reemplaza con tus datos reales)
    final List<CartItem> itemsEnCarrito = [
      CartItem(nombre: 'Producto A', precio: 20.0, cantidad: 2),
      CartItem(nombre: 'Producto B', precio: 15.0, cantidad: 1),
      // Agrega más elementos aquí...
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras'),
      ),
      body: ListView.builder(
        itemCount: itemsEnCarrito.length,
        itemBuilder: (BuildContext context, int index) {
          final item = itemsEnCarrito[index];
          return Card(
            elevation: 3,
            child: ListTile(
              title: Text(item.nombre),
              subtitle: Text('Cantidad: ${item.cantidad}'),
              trailing: Text('\$${item.precio * item.cantidad}'),
            ),
          );
        },
      ),
    );
  }
}

class CartItem {
  final String nombre;
  final double precio;
  final int cantidad;

  CartItem(
      {required this.nombre, required this.precio, required this.cantidad});
}
