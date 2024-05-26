import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:heyyoumarket/domain/use_cases/auth/auth_usecases.dart';
import 'package:heyyoumarket/domain/utils/resource.dart';
import 'package:heyyoumarket/presentation/auth/register/register_state.dart';
import 'package:heyyoumarket/presentation/utils/validation_item.dart';

class RegisterViewmodel extends ChangeNotifier {
  final AuthUsecases _authUsecases;

  RegisterState _state = RegisterState();

  RegisterState get state => _state;

  final StreamController<Resource> _responseController =
      StreamController<Resource>.broadcast();
  Stream<Resource> get response => _responseController.stream;

  RegisterViewmodel(this._authUsecases);

  changeUserName(String value) {
    _responseController.add(Init());
    if (value.length <= 2) {
      _state = _state.copyWith(
          userNames: const ValidationItem(
              error:
                  'Los nombres de usuario deben tener entre 3 y 25 caracteres'));
    } else if (value.length >= 3) {
      _state =
          _state.copyWith(userNames: ValidationItem(value: value, error: ''));
    } else {
      _state.copyWith(
          userNames: const ValidationItem(
              error:
                  'Los nombres de usuario deben tener entre 3 y 25 caracteres'));
    }
    notifyListeners();
  }

  changeEmail(String value) {
    _responseController.add(Init());
    final bool emailFormatValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);

    if (!emailFormatValid) {
      _state = _state.copyWith(
          email: const ValidationItem(error: 'Ingrese un Email valido'));
    } else if (value.length >= 9) {
      _state = _state.copyWith(email: ValidationItem(value: value, error: ''));
    } else {
      _state.copyWith(email: const ValidationItem(error: 'Email Invalido'));
    }

    notifyListeners();
  }

  changeDatebirth(String value) {
    // _responseController.add(Init());
    // _state = _state.copyWith(email: ValidationItem(value: value, error: ''));
    // if (value.length <= 1) {
    //   _state = _state.copyWith(
    //       email: const ValidationItem(error: 'Ingrese un Email valido'));
    // } else if (value.length >= 4) {
    //   _state = _state.copyWith(email: ValidationItem(value: value, error: ''));
    // } else {
    //   _state.copyWith(
    //       email: const ValidationItem(error: 'Al menos 4 caracteres'));
    // }

    // notifyListeners();
  }

  changeGender(String value) {
    // _responseController.add(Init());
    // if (value.isEmpty) {
    //   _state = _state.copyWith(
    //       gender: const ValidationItem(error: 'Seleccione su genero'));
    // } else if (value.length >= 4) {
    //   _state = _state.copyWith(gender: ValidationItem(value: value, error: ''));
    // } else {
    //   _state.copyWith(
    //       gender: const ValidationItem(error: 'Selecione Su Genero'));
    // }

    // notifyListeners();
  }

  changePassword(String value) {
    _responseController.add(Init());
    if (value.length <= 5 || value.length >= 14) {
      _state = _state.copyWith(
          password: const ValidationItem(
              error:
                  'La Contraseña debe tener minimo 6 caracteres y maximo 14'));
    } else if (value.length >= 6 && (value.length < 14)) {
      _state =
          _state.copyWith(password: ValidationItem(value: value, error: ''));
    } else {
      _state.copyWith(
          password: const ValidationItem(error: 'Contraseña Invalida'));
    }

    notifyListeners();
  }

  register() async {
    // if (_state.isValid()) {
    //   _responseController.add(Loading());
    //   final data = await _authUsecases.register
    //       .launch(_state.toUser()); // SUCCESS - ERROR
    //   _responseController.add(data);
    // }
    _responseController.add(Loading());
    final data =
        await _authUsecases.register.launch(_state.toUser()); // SUCCESS - ERROR
    _responseController.add(data);
  }
}
