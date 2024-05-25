import 'package:flutter/material.dart';
import 'package:heyyoumarket/presentation/auth/register/register_viewmodel.dart';
import 'package:heyyoumarket/presentation/auth/register/widgets/register_content.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterViewmodel vm = Provider.of<RegisterViewmodel>(context);
    return const Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false, // Evita que el teclado provoque scroll
      body: Stack(
        children: [
          StreamBuilder(
              stream: vm.response,
              builder: (context, snapshot) {
                final response = snapshot.data;
                if (response is Loading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (response is Error) {
                  final data = response;
                  Fluttertoast.showToast(
                      msg: data.error,
                      toastLength: Toast.LENGTH_LONG,
                      timeInSecForIosWeb: 3);
                } else if (response is Success) {
                  WidgetsBinding.instance.addPostFrameCallback((timestamp) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyApp(locator<AuthUseCases>()),
                        ),
                        (route) => false);
                  });
                }
                return Container();
              }),
          RegisterContent(vm),
        ],
      ),
    );
  }
}
