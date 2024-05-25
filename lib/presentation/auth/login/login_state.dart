import 'package:heyyoumarket/presentation/utils/validation_item.dart';

class LoginState {
  ValidationItem email;
  ValidationItem password;

  LoginState(
      {this.email = const ValidationItem(),
      this.password = const ValidationItem()});

  bool isValid() {
    if (email.value.isEmpty ||
        email.error.isNotEmpty ||
        password.value.isEmpty ||
        password.error.isNotEmpty) {
      return false;
    }
    return true;
  }

  LoginState copyWith({ValidationItem? email, ValidationItem? password}) =>
      LoginState(
          email: email ?? this.email, password: password ?? this.password);
}
