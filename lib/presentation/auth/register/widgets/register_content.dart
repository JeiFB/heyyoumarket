import 'package:flutter/material.dart';
import 'package:heyyoumarket/presentation/components/heyyou_button.dart';
import 'package:heyyoumarket/presentation/components/heyyou_text_form_field.dart';

class RegisterContent extends StatelessWidget {
  const RegisterContent({super.key});

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
              const SizedBox(height: 5),
              HeyYouTextFormField(
                'Tu Nombre',
                icon: Icons.email_rounded,
                onChange: (value) {},
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tu Apellido',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              HeyYouTextFormField(
                'Tu Apellido',
                icon: Icons.email_rounded,
                onChange: (value) {},
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tu Correo',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              HeyYouTextFormField(
                'Tu Correo',
                icon: Icons.email_rounded,
                onChange: (value) {},
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sexo',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              HeyYouTextFormField(
                'Sexo',
                icon: Icons.email_rounded,
                onChange: (value) {},
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fecha de Nacimiento',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              HeyYouTextFormField(
                'Fecha de Nacimiento',
                icon: Icons.email_rounded,
                onChange: (value) {},
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Agrega tu contraseña',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              HeyYouTextFormField(
                'Tu contraseña',
                icon: Icons.lock,
                isPassword: true,
                onChange: (value) {},
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Confirmar contraseña',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              HeyYouTextFormField(
                'Confirmar contraseña',
                icon: Icons.lock,
                isPassword: true,
                onChange: (value) {},
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
    );
  }
}
