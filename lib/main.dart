import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:heyyoumarket/firebase_options.dart';
import 'package:heyyoumarket/presentation/auth/login/login_page.dart';
import 'package:heyyoumarket/presentation/auth/register/register_page.dart';
import 'package:heyyoumarket/presentation/home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HeyyouMarket',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => const LoginPage(),
        'register': (BuildContext context) => const RegisterPage(),
        'homepage': (BuildContext context) => const HomePage(),
      },
    );
  }
}
