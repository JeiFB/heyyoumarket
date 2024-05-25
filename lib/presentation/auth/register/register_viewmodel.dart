import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:heyyoumarket/domain/use_cases/auth/auth_usecases.dart';
import 'package:heyyoumarket/domain/utils/resource.dart';
import 'package:heyyoumarket/presentation/auth/register/register_state.dart';

class RegisterViewmodel extends ChangeNotifier {
  final AuthUsecases _authUsecases;

  RegisterState _state = RegisterState();

  RegisterState get state => _state;

  final StreamController<Resource> _responseController =
      StreamController<Resource>.broadcast();
  Stream<Resource> get response => _responseController.stream;

  RegisterViewmodel(this._authUsecases);

  userNameChange(String value) {}

  userLastNameChange(String value) {}

  emailChange(String value) {}

  birthDate(String value) {}

  genderChange(String value) {}

  passwordChange(String value) {}

  confirmPaswordChange(String value) {}

  register() async {}
}
