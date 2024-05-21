import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: const Color.fromARGB(255, 242, 248, 252),
          floating: true,
          pinned: false,
          snap: true,
          expandedHeight: 80.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Card(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 45,
                    margin:
                        const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                    child: TextField(
                      textAlignVertical: const TextAlignVertical(y: 1),
                      decoration: InputDecoration(
                        hintText: '¿Que quieres comprar?',
                        hintStyle: const TextStyle(fontSize: 18),
                        prefixIcon: const Icon(Icons.search,
                            size: 30, color: Colors.black),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 242, 248, 252),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              // Primera tarjeta
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10.0),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Tu Favoritos ',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        height:
                            120.0, // Altura del contenedor para las tarjetas
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(9, (index) {
                              return SizedBox(
                                width: 150.0, // Ancho de cada tarjeta
                                child: Container(
                                  margin: const EdgeInsets.only(left: 4),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, 'producto');
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.local_pizza,
                                              size: 50.0),
                                          // Icon(

                                          //   const Icon(),
                                          // ),
                                          const SizedBox(height: 10.0),
                                          Text(
                                            'Producto ${index + 1}',
                                            style:
                                                const TextStyle(fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0), // Espacio entre las filas
                    ],
                  ),
                ),
              ),
              // Segunda tarjeta con GridView adaptable
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10.0),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Compra y Ahorra ',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        height:
                            120.0, // Altura del contenedor para las tarjetas
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(9, (index) {
                              return Container(
                                width: 150.0, // Ancho de cada tarjeta
                                // margin: const EdgeInsets.only(right: 1.0),
                                child: Container(
                                  margin: EdgeInsets.only(left: 4),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.local_pizza,
                                            size: 50.0),
                                        const SizedBox(height: 10.0),
                                        Text(
                                          'Producto ${index + 1}',
                                          style:
                                              const TextStyle(fontSize: 16.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0), // Espacio entre las filas
                    ],
                  ),
                ),
              ),
              //tercera tarjeta
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10.0),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Populares',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        height:
                            120.0, // Altura del contenedor para las tarjetas
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(9, (index) {
                              return Container(
                                width: 150.0, // Ancho de cada tarjeta
                                // margin: const EdgeInsets.only(right: 1.0),
                                child: Container(
                                  margin: EdgeInsets.only(left: 4),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.local_pizza,
                                            size: 50.0),
                                        const SizedBox(height: 10.0),
                                        Text(
                                          'Producto ${index + 1}',
                                          style:
                                              const TextStyle(fontSize: 16.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0), // Espacio entre las filas
                    ],
                  ),
                ),
              ),
              // cuarta tarjeta
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10.0),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Recomendaciones',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        height:
                            120.0, // Altura del contenedor para las tarjetas
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(9, (index) {
                              return Container(
                                width: 150.0, // Ancho de cada tarjeta
                                // margin: const EdgeInsets.only(right: 1.0),
                                child: Container(
                                  margin: EdgeInsets.only(left: 4),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.local_pizza,
                                            size: 50.0),
                                        const SizedBox(height: 10.0),
                                        Text(
                                          'Producto ${index + 1}',
                                          style:
                                              const TextStyle(fontSize: 16.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0), // Espacio entre las filas
                    ],
                  ),
                ),
              ),
              // quinta tarjeta
            ],
          ),
        ),
      ],
    );
  }
}
