import 'package:flutter/material.dart';

class ProductoPage extends StatelessWidget {
  const ProductoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 242, 248, 252),
            floating: true,
            pinned: false,
            snap: true,
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                'Favoritos',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                size: 25,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Card(
                            color: const Color.fromARGB(255, 242, 248, 252),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // const SizedBox(height: 10.0),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 5),
                                  child: Text(
                                    'Todo',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: const Color.fromARGB(255, 242, 248, 252),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // const SizedBox(height: 10.0),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 5),
                                  child: Text(
                                    'D1',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: const Color.fromARGB(255, 242, 248, 252),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // const SizedBox(height: 10.0),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 5),
                                  child: Text(
                                    'ARA',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
                  margin: const EdgeInsets.symmetric(vertical: 0.8),
                  color: Colors.white,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const SizedBox(height: 10.0),
                        SizedBox(
                          height:
                              120.0, // Altura del contenedor para las tarjetas
                          child: Row(
                            children: List.generate(1, (index) {
                              return Container(
                                width: 150.0, // Ancho de cada tarjeta
                                margin: const EdgeInsets.only(right: 8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: const Color.fromARGB(
                                        255, 242, 248, 252),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.local_pizza,
                                            size: 50.0),
                                        // const SizedBox(height: 10.0),
                                        Text(
                                          'Producto $index',
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
                        // const SizedBox(
                        //     height: 10.0), // Espacio entre las filas
                      ],
                    ),
                  ),
                ),
                // Segunda tarjeta con GridView adaptable
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 0.8),
                  color: Colors.white,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const SizedBox(height: 10.0),
                        SizedBox(
                          height:
                              120.0, // Altura del contenedor para las tarjetas
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(1, (index) {
                                return Container(
                                  width: 150.0, // Ancho de cada tarjeta
                                  margin: const EdgeInsets.only(right: 8.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      color: const Color.fromARGB(
                                          255, 242, 248, 252),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.local_pizza,
                                              size: 50.0),
                                          // const SizedBox(height: 10.0),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Producto $index',
                                              style: const TextStyle(
                                                  fontSize: 16.0),
                                            ),
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
                        // const SizedBox(
                        //     height: 10.0), // Espacio entre las filas
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
