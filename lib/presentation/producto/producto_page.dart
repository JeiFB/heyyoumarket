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
            automaticallyImplyLeading: false,
            // leading: const Text(''),
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
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    size: 25,
                                    color: Colors.black,
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: const Text(
                                    'Producto',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.share,
                                size: 25,
                                color: Colors.black,
                              )),
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
                Container(
                  width: double.infinity,
                  height: 200,
                  color: const Color.fromARGB(255, 242, 248, 252),
                  child: Image.asset(
                    'assets/img/rice.png',
                    cacheHeight: 120,
                    alignment: Alignment.center,
                  ),
                ),
                // Primera tarjeta
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 0.8),
                  color: Colors.white,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'D1',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Image.asset(
                                  'assets/img/d1.png',
                                  cacheHeight: 30,
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Arroz del campo riopilapue 5kg',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '\$18.072',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '5kg * \$3614.40/kg',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.thumb_up_outlined)),
                                  ),
                                  const Text('600')
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.thumb_down_outlined)),
                                  ),
                                  const Text('50')
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // Segunda tarjeta con GridView adaptable
              ],
            ),
          ),
        ],
      ),
    );
  }
}
