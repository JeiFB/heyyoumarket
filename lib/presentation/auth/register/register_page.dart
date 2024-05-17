import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Hey you Market',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Create an account',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'welcome',
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Name',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  TextFormField(
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Email',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  TextFormField(
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Password',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  TextFormField(
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {},
                      child: const Text('Sing Up'),
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
                          child: const Text('Sing Up with Google'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Sing Up with Facebook'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Log In')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
