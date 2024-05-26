import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de productos
    final List<Map<String, String>> products = [
      {'name': 'Producto 1', 'description': 'Descripción 1'},
      {'name': 'Producto 1', 'description': 'Descripción 1'},
      {'name': 'Producto 1', 'description': 'Descripción 1'},
      {'name': 'Producto 1', 'description': 'Descripción 1'},
      {'name': 'Producto 2', 'description': 'Descripción 2'},
      {'name': 'Producto 3', 'description': 'Descripción 3'},
      {'name': 'Producto 4', 'description': 'Descripción 4'},
      {'name': 'Producto 5', 'description': 'Descripción 5'},
      {'name': 'Producto 6', 'description': 'Descripción 6'},
      {'name': 'Producto 7', 'description': 'Descripción 7'},
      {'name': 'Producto 8', 'description': 'Descripción 8'},
      {'name': 'Producto 9', 'description': 'Descripción 9'},
      {'name': 'Producto 10', 'description': 'Descripción 10'},
    ];

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: const Color.fromARGB(255, 242, 248, 252),
          floating: true,
          pinned: false, // Establecer pinned en true
          snap: false,
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
                            'Productos',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(8, (index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 4),
                          child: GestureDetector(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Todo ${index + 1}',
                                        style: const TextStyle(fontSize: 16.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              if (index == 0) {
                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.all(5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: products.map((product) {
                        return SizedBox(
                          width: 500,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Icon(
                                        Icons.image,
                                        size: 50.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16.0),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              product['name']!,
                                              style: const TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(height: 4.0),
                                            Text(
                                              product['description']!,
                                              style: const TextStyle(
                                                  fontSize: 14.0),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: SizedBox(
                                            height: 100,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Transform.translate(
                                                      offset: const Offset(30,
                                                          0), // Ajusta este valor para mover "market" hacia arriba y a la derecha
                                                      child: const Text(
                                                        'Heyou',
                                                        style: TextStyle(
                                                          fontFamily: 'heyam',
                                                          fontSize: 20,
                                                          color: Color.fromARGB(
                                                              255, 0, 204, 102),
                                                        ),
                                                      ),
                                                    ),
                                                    Transform.translate(
                                                      offset: const Offset(-30,
                                                          30), // Ajusta este valor para mover "market" hacia arriba y a la derecha
                                                      child: const Text(
                                                        'market',
                                                        style: TextStyle(
                                                          fontFamily: 'heyam',
                                                          fontSize: 20,
                                                          color: Color.fromARGB(
                                                              255, 0, 204, 102),
                                                        ),
                                                      ),
                                                    ),
                                                    // const Text(
                                                    //   'D1',
                                                    //   style: TextStyle(
                                                    //       fontWeight:
                                                    //           FontWeight.bold,
                                                    //       fontSize: 15),
                                                    // ),
                                                    // const SizedBox(
                                                    //   width: 10,
                                                    // ),
                                                    // Image.asset(
                                                    //   'assets/img/d1.png',
                                                    //   cacheHeight: 25,
                                                    // ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                      icon: const Icon(
                                                        Icons.favorite_border,
                                                        size: 30.0,
                                                        color: Color.fromARGB(
                                                            255, 0, 204, 102),
                                                      ),
                                                      onPressed: () {},
                                                    ),
                                                    IconButton(
                                                      icon: const Icon(
                                                        Icons
                                                            .add_shopping_cart_rounded,
                                                        size: 30.0,
                                                        color: Color.fromARGB(
                                                            255, 0, 204, 102),
                                                      ),
                                                      onPressed: () {},
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              if (product != products.last)
                                const Divider(
                                  color: Color.fromARGB(255, 0, 204, 102),
                                ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
