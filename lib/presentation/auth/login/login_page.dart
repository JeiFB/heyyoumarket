import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    String email = 'test@gmail.com';
    String password = '123456';
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          child: ListView(
            children: [
              Column(
                children: [
                  const SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Bienvenido/a',
                        style: TextStyle(
                            fontFamily: 'Feather Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  const SizedBox(
                      width: double.infinity,
                      child: Text('Heyou market',
                          style: TextStyle(
                              fontFamily: 'heyam',
                              fontSize: 60,
                              color: Color.fromARGB(255, 0, 204, 102)))),
                  const SizedBox(
                    height: 40,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Agrega tu correo',
                      style:
                          TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: const Color.fromARGB(255, 0, 204, 102),
                    decoration: InputDecoration(
                      hintText: 'Tu correo',
                      hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Feather Bold',
                          fontSize: 14),
                      filled: true,
                      fillColor: const Color.fromARGB(40, 0, 204, 102),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 0, 204, 102)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: 2.0,
                          color: Color.fromARGB(255, 0, 204, 102),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide
                            .none, // Sin borde cuando no está seleccionado
                      ),
                    ),
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Agrega tu contraseña',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  TextFormField(
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot password',
                            textAlign: TextAlign.end,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        final data =
                            await firebaseAuth.signInWithEmailAndPassword(
                                email: email, password: password);
                        Navigator.popAndPushNamed(context, 'homepage');
                      },
                      child: const Text('Log In'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Log In with Google'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Log In with Facebook'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: const Text('Sign Up')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
