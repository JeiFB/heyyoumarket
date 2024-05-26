import 'dart:async';

import 'package:flutter/material.dart';
import 'package:heyyoumarket/domain/use_cases/auth/auth_usecases.dart';
import 'package:heyyoumarket/domain/utils/resource.dart';
import 'package:heyyoumarket/presentation/auth/login/login_state.dart';
import 'package:heyyoumarket/presentation/utils/validation_item.dart';

class LoginViewmodel extends ChangeNotifier {
  final AuthUsecases _authUseCases;

  LoginState _state = LoginState();
  LoginState get state => _state;

  final StreamController<Resource> _responseController =
      StreamController<Resource>.broadcast();
  Stream<Resource> get response => _responseController.stream;

  LoginViewmodel(this._authUseCases);

  changeEmail(String value) {
    _responseController.add(Init());
    final bool emailFormatValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);

    if (!emailFormatValid) {
      _state = _state.copyWith(
          email: const ValidationItem(error: 'Ingrese un Email valido'));
    } else if (value.length >= 6) {
      _state = _state.copyWith(email: ValidationItem(value: value, error: ''));
    } else {
      _state.copyWith(
          email: const ValidationItem(error: 'Al menos 6 caracteres'));
    }

    notifyListeners();
  }

  changePassword(String value) {
    _responseController.add(Init());
    _state = _state.copyWith(password: ValidationItem(value: value, error: ''));
    notifyListeners();
  }

  login() async {
    if (_state.isValid()) {
      _responseController.add(Loading()); //Esperando la respuesta
      final data = await _authUseCases.login
          .launch(email: _state.email.value, password: _state.password.value);
      _responseController.add(data);
    }
  }
}
