import 'package:heyyoumarket/domain/use_cases/auth/login_usecase.dart';
import 'package:heyyoumarket/domain/use_cases/auth/register_usecase.dart';

class AuthUsecases {
  final LoginUsecase login;
  final RegisterUsecase register;

  AuthUsecases({required this.login, required this.register});
}
