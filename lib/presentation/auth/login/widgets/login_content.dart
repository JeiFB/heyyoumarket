import 'package:flutter/material.dart';
import 'package:heyyoumarket/presentation/auth/login/login_viewmodel.dart';
import 'package:heyyoumarket/presentation/components/heyyou_text_form_field.dart';

import '../../../components/heyyou_button.dart';

class LoginContent extends StatelessWidget {
  final LoginViewmodel vm;
  const LoginContent(this.vm, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 50), // Añade un espaciado superior
              Transform.translate(
                offset: const Offset(-30,
                    0), // Ajusta este valor para mover "market" hacia arriba y a la derecha
                child: const Text(
                  'Heyou',
                  style: TextStyle(
                    fontFamily: 'heyam',
                    fontSize: 60,
                    color: Color.fromARGB(255, 0, 204, 102),
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(30,
                    -30), // Ajusta este valor para mover "market" hacia arriba y a la derecha
                child: const Text(
                  'market',
                  style: TextStyle(
                    fontFamily: 'heyam',
                    fontSize: 60,
                    color: Color.fromARGB(255, 0, 204, 102),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Agrega tu correo',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              HeyYouTextFormField(
                'Tu correo',
                icon: Icons.email_rounded,
                onChange: (value) {
                  vm.changeEmail(value);
                },
              ),
              const SizedBox(height: 25),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Agrega tu contraseña',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              HeyYouTextFormField(
                'Tu contraseña',
                icon: Icons.lock,
                isPassword: true,
                onChange: (value) {
                  vm.changePassword(value);
                },
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    '¿Olvidaste tu contreña?',
                    style: TextStyle(
                        fontFamily: 'Feather Bold',
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 204, 102)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  width: double.infinity,
                  child: HeyYouButton(
                      texto: 'Ingresar',
                      onPressed: () {
                        vm.login();
                      },
                      color: const Color.fromARGB(255, 0, 204, 102),
                      textColor: Colors.white)),
              const SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: HeyYouButton(
                          iconPath: 'assets/img/google.png',
                          fSize: 20,
                          pWith: 5,
                          texto: 'Ingresar con google',
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.black45)),
                  SizedBox(
                      width: double.infinity,
                      child: HeyYouButton(
                          iconPath: 'assets/img/facebook.png',
                          fSize: 20,
                          pWith: 5,
                          texto: 'Ingresar con facebook',
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.black45))
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('¿No tienes una cuenta?',
                      style: TextStyle(
                          fontFamily: 'Feather Bold',
                          fontSize: 14,
                          color: Colors.grey)),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'register');
                    },
                    child: const Text('Registrarse',
                        style: TextStyle(
                            fontFamily: 'Feather Bold',
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 153, 77))),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Añade un espaciado inferior
            ],
          ),
        ),
      ),
    );
  }
}
