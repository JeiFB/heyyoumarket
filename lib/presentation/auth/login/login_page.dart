import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:heyyoumarket/presentation/components/heyyou_button.dart';
import 'package:heyyoumarket/presentation/components/heyyou_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    String email = 'test@gmail.com';
    String password = '123456';

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false, // Evita que el teclado provoque scroll
      body: Center(
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
                const HeyYouTextFormField(
                  'Tu correo',
                  icon: Icons.email_rounded,
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
                const HeyYouTextFormField(
                  'Tu contraseña',
                  icon: Icons.lock,
                  isPassword: true,
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
                        onPressed: () async {
                          final data =
                              await firebaseAuth.signInWithEmailAndPassword(
                            email: email,
                            password: password,
                          );
                          Navigator.popAndPushNamed(context, 'homepage');
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
      ),
    );
  }
}
