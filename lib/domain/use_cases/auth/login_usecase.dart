import 'package:heyyoumarket/domain/repository/auth_repository.dart';

class LoginUsecase {
  final AuthRepository _authRepository;

  LoginUsecase(this._authRepository);

  launch({required String email, required String password}) =>
      _authRepository.login(email: email, password: password);
}
