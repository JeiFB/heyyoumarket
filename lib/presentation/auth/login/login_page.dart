import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:heyyoumarket/domain/utils/resource.dart';
import 'package:heyyoumarket/main.dart';
import 'package:heyyoumarket/presentation/auth/login/login_viewmodel.dart';
import 'package:heyyoumarket/presentation/auth/login/widgets/login_content.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginViewmodel vm = Provider.of<LoginViewmodel>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false, // Evita que el teclado provoque scroll
      body: Stack(
        children: [
          StreamBuilder(
              stream: vm.response,
              builder: (context, snapshot) {
                final response = snapshot.data;
                if (response is Loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (response is Error) {
                  final data = response;
                  Fluttertoast.showToast(
                      msg: data.error,
                      toastLength: Toast.LENGTH_LONG,
                      timeInSecForIosWeb: 3);
                } else if (response is Success) {
                  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                    Navigator.pushNamed(context, 'homepage');
                    // Navigator.pushAndRemoveUntil(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => MyApp(locator<AuthUseCases>()),
                    //     ),
                    //     (route) => false);
                  });
                }
                return Container();
              }),
          LoginContent(vm)
        ],
      ),
    );
  }
}
