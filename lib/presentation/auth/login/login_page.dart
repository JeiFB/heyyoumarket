import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome'),
            TextFormField(
              onChanged: (value) {},
            ),
            TextFormField(
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Ingresar')),
            const SizedBox(
              height: 30,
            ),
            const Text('Ingresar con:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.g_mobiledata_outlined)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.facebook_sharp)),
              ],
            )
          ],
        ),
      )),
    );
  }
}
