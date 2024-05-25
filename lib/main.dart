import 'package:flutter/material.dart';
import 'package:heyyoumarket/domain/use_cases/auth/auth_usecases.dart';
import 'package:heyyoumarket/injection.dart';
import 'package:heyyoumarket/presentation/auth/login/login_page.dart';
import 'package:heyyoumarket/presentation/auth/login/login_viewmodel.dart';
import 'package:heyyoumarket/presentation/auth/register/register_page.dart';
import 'package:heyyoumarket/presentation/home/home_page.dart';
import 'package:heyyoumarket/presentation/producto/product_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependecies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => LoginViewmodel(locator<AuthUsecases>())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HeyyouMarket',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 0, 204, 102)),
          useMaterial3: true,
        ),
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => const LoginPage(),
          'register': (BuildContext context) => const RegisterPage(),
          'homepage': (BuildContext context) => const HomePage(),
          'producto': (BuildContext context) => const ProductPage(),
        },
      ),
    );
  }
}
