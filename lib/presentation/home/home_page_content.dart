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
                          'Categorias',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        height:
                            130.0, // Altura del contenedor para las tarjetas
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(5, (index) {
                              return SizedBox(
                                width: 100.0,
                                height: 130, // Ancho de cada tarjeta
                                child: Container(
                                  margin: const EdgeInsets.only(left: 4),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, 'producto');
                                    },
                                    child: Card(
                                      color: const Color.fromARGB(
                                          255, 242, 248, 252),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image.asset(
                                              'assets/img/carnes.png',
                                              height:
                                                  70.0, // Ajusta la altura según sea necesario
                                              width:
                                                  100.0, // Ajusta el ancho según sea necesario
                                              // fit: BoxFit
                                              //     .cover, // Ajusta la imagen para cubrir todo el card
                                            ),
                                          ),
                                          const SizedBox(height: 10.0),
                                          const Text(
                                            'categoria',
                                            style: TextStyle(fontSize: 16.0),
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
              ), //segunda tarjeta
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
                          'Compra y ahorra ',
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
                            children: List.generate(5, (index) {
                              return SizedBox(
                                width: 150.0, // Ancho de cada tarjeta
                                child: Container(
                                  margin: const EdgeInsets.only(left: 4),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, 'producto');
                                    },
                                    child: Card(
                                      color: const Color.fromARGB(
                                          255, 242, 248, 252),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image.asset(
                                              'assets/img/tortilla.png',
                                              height:
                                                  70.0, // Ajusta la altura según sea necesario
                                              width:
                                                  100.0, // Ajusta el ancho según sea necesario
                                              // fit: BoxFit
                                              //     .cover, // Ajusta la imagen para cubrir todo el card
                                            ),
                                          ),
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
                                    color: const Color.fromARGB(
                                        255, 242, 248, 252),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          child: Image.asset(
                                            'assets/img/aceitecanola.png',
                                            height:
                                                70.0, // Ajusta la altura según sea necesario
                                            width:
                                                100.0, // Ajusta el ancho según sea necesario
                                            // fit: BoxFit
                                            //     .cover, // Ajusta la imagen para cubrir todo el card
                                          ),
                                        ),
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
                                    color: const Color.fromARGB(
                                        255, 242, 248, 252),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          child: Image.asset(
                                            'assets/img/aguacate.png',
                                            height:
                                                70.0, // Ajusta la altura según sea necesario
                                            width:
                                                100.0, // Ajusta el ancho según sea necesario
                                            // fit: BoxFit
                                            //     .cover, // Ajusta la imagen para cubrir todo el card
                                          ),
                                        ),
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
              // tecera tarjeta con adaptable
              // Card(
              //   color: Colors.white,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10.0),
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Container(
              //         margin: const EdgeInsets.only(left: 10),
              //         child: const Text(
              //           'Tiendas',
              //           style: TextStyle(
              //               fontSize: 18.0, fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //       GridView.builder(
              //         physics:
              //             const NeverScrollableScrollPhysics(), // Para que el GridView no se desplace por separado
              //         shrinkWrap: true,
              //         gridDelegate:
              //             const SliverGridDelegateWithFixedCrossAxisCount(
              //           crossAxisCount: 3, // Número de columnas
              //           mainAxisSpacing: 3.0,
              //           crossAxisSpacing: 1.0,
              //           // childAspectRatio: 0.75,
              //         ),
              //         itemCount: 10, // Número de elementos en el grid
              //         itemBuilder: (context, index) {
              //           return Card(
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(20.0),
              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 const Icon(Icons.local_pizza, size: 50.0),
              //                 const SizedBox(height: 10.0),
              //                 Text(
              //                   'Producto ${index + 1}',
              //                   style: const TextStyle(fontSize: 16.0),
              //                 ),
              //               ],
              //             ),
              //           );
              //         },
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
