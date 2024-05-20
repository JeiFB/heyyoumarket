// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:heyyoumarket/presentation/components/heyyou_button.dart';
import 'package:heyyoumarket/presentation/components/heyyou_text_form_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    // String email = 'test@gmail.com';
    // String password = '123456';

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
                const Text(
                  'Registrarse',
                  style: TextStyle(
                    fontFamily: 'heyam',
                    fontSize: 60,
                    color: Color.fromARGB(255, 0, 204, 102),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tu Nombre',
                    style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                  ),
                ),
                const SizedBox(height: 10),
                const HeyYouTextFormField(
                  'Tu Nombre',
                  icon: Icons.email_rounded,
                ),
                const SizedBox(height: 25),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tu Correo',
                    style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                  ),
                ),
                const SizedBox(height: 10),
                const HeyYouTextFormField(
                  'Tu Correo',
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
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Confirmar contraseña',
                    style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                  ),
                ),
                const SizedBox(height: 10),
                const HeyYouTextFormField(
                  'Confirmar contraseña',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                const SizedBox(height: 20),
                SizedBox(
                    width: double.infinity,
                    child: HeyYouButton(
                        texto: 'Registrarse',
                        onPressed: () {},
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
                            texto: 'Registrarse con google',
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Colors.black45)),
                    SizedBox(
                        width: double.infinity,
                        child: HeyYouButton(
                            iconPath: 'assets/img/facebook.png',
                            fSize: 20,
                            pWith: 5,
                            texto: 'Registrarse con facebook',
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Colors.black45))
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('¿Ya tienes cuenta?',
                        style: TextStyle(
                            fontFamily: 'Feather Bold',
                            fontSize: 14,
                            color: Colors.grey)),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Iniciar sesión',
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
