import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Hey you market'),
              const Text('welcome'),
              Column(
                children: [
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
                    height: 25,
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
                      onPressed: () {},
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
