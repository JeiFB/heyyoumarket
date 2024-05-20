import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

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
                        hintText: 'Búsqueda de tiendas o productos...',
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
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
                            'Categorias',
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
                                  margin: const EdgeInsets.only(right: 8.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
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
                                          const SizedBox(height: 10.0),
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
                        ),
                        const SizedBox(height: 10.0), // Espacio entre las filas
                        SizedBox(
                          height:
                              120.0, // Altura del contenedor para las tarjetas
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(9, (index) {
                                return Container(
                                  width: 150.0, // Ancho de cada tarjeta
                                  margin: const EdgeInsets.only(right: 8.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.local_drink,
                                              size: 50.0),
                                          const SizedBox(height: 10.0),
                                          Text(
                                            'Bebida $index',
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
                      ],
                    ),
                  ),
                ),
              ),
              // Segunda tarjeta con GridView adaptable
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tiendas',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          'Tiendas conocidas.',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(height: 10.0),
                        GridView.builder(
                          physics:
                              const NeverScrollableScrollPhysics(), // Para que el GridView no se desplace por separado
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, // Número de columnas
                            mainAxisSpacing: 8.0,
                            crossAxisSpacing: 8.0,
                            childAspectRatio: 0.75,
                          ),
                          itemCount: 20, // Número de elementos en el grid
                          itemBuilder: (context, index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.business_outlined,
                                      size: 50.0),
                                  const SizedBox(height: 10.0),
                                  Text(
                                    'Tieda ${index + 1} ',
                                    style: const TextStyle(fontSize: 16.0),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
