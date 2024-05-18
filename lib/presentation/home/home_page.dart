import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 248, 252),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color.fromARGB(255, 242, 248, 252),
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
                      margin: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 10),
                      child: TextField(
                        textAlignVertical: const TextAlignVertical(y: 1),
                        decoration: InputDecoration(
                          hintText: 'Búsqueda de tiendas o productos...',
                          hintStyle: const TextStyle(fontSize: 18),
                          prefixIcon: const Icon(Icons.search,
                              size: 30, color: Colors.black),
                          filled: true,
                          fillColor: Color.fromARGB(255, 242, 248, 252),
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
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.0),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'Categorias',
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            height:
                                120.0, // Altura del contenedor para las tarjetas
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(9, (index) {
                                  return Container(
                                    width: 150.0, // Ancho de cada tarjeta
                                    margin: const EdgeInsets.only(right: 8.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.local_pizza, size: 50.0),
                                          SizedBox(height: 10.0),
                                          Text(
                                            'Producto $index',
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0), // Espacio entre las filas
                          Container(
                            height:
                                120.0, // Altura del contenedor para las tarjetas
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(9, (index) {
                                  return Container(
                                    width: 150.0, // Ancho de cada tarjeta
                                    margin: const EdgeInsets.only(right: 8.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.local_drink, size: 50.0),
                                          SizedBox(height: 10.0),
                                          Text(
                                            'Bebida $index',
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                        ],
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
                          Text(
                            'Bebidas',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Ofertas en todo tipo de bebidas.',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10.0),
                          GridView.builder(
                            physics:
                                NeverScrollableScrollPhysics(), // Para que el GridView no se desplace por separado
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
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
                                    Icon(Icons.local_drink, size: 50.0),
                                    SizedBox(height: 10.0),
                                    Text(
                                      'Bebida $index',
                                      style: TextStyle(fontSize: 16.0),
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
      ),
    );
  }
}
