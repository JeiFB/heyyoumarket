import 'package:flutter/material.dart';
import 'package:heyyoumarket/presentation/components/heyyou_button.dart';
import 'package:heyyoumarket/presentation/components/heyyou_text_form_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: const Color.fromARGB(255, 242, 248, 252),
          floating: true,
          pinned: false,
          snap: true,
          expandedHeight: 90.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Card(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Perfil',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 5.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Actualiza tus datos personales',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
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
              Card(
                margin: const EdgeInsets.symmetric(vertical: 0.8),
                color: Colors.white,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Nombre De Usuario'),
                        const SizedBox(
                          height: 10,
                        ),
                        HeyYouTextFormField(
                          '',
                          onChange: (value) {},
                          initial: 'Nombre De Usuario',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Correo'),
                        const SizedBox(
                          height: 10,
                        ),
                        HeyYouTextFormField(
                          '',
                          onChange: (value) {},
                          initial: 'correo@gmail.com',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Fecha de nacimiento'),
                        const SizedBox(
                          height: 10,
                        ),
                        HeyYouTextFormField(
                          '',
                          onChange: (value) {},
                          initial: '0000/00/00',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Sexo'),
                        const SizedBox(
                          height: 10,
                        ),
                        HeyYouTextFormField(
                          '',
                          onChange: (value) {},
                          initial: 'Hombre',
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: HeyYouButton(
                    texto: 'Guardar',
                    onPressed: () {},
                    color: const Color.fromARGB(255, 0, 204, 102),
                    textColor: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
