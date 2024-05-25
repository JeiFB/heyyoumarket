import 'package:heyyoumarket/domain/models/user_data.dart';
import 'package:heyyoumarket/presentation/utils/validation_item.dart';

class RegisterState {
  ValidationItem userNames;
  ValidationItem userLastName;
  ValidationItem email;
  ValidationItem birthDate;
  ValidationItem gender;
  ValidationItem password;
  ValidationItem confirmPassword;
  RegisterState(
      {this.userNames = const ValidationItem(),
      this.userLastName = const ValidationItem(),
      this.email = const ValidationItem(),
      this.birthDate = const ValidationItem(),
      this.gender = const ValidationItem(),
      this.password = const ValidationItem(),
      this.confirmPassword = const ValidationItem()});

  toUser() => UserData(
      userName: userNames.value,
      userLastName: userLastName.value,
      email: email.value,
      birthDate: birthDate.value,
      gender: gender.value,
      password: password.value);
  isValid() {
    if (userNames.value.isEmpty ||
        userNames.error.isNotEmpty ||
        userLastName.value.isEmpty ||
        userLastName.error.isNotEmpty ||
        email.value.isEmpty ||
        email.error.isNotEmpty ||
        birthDate.value.isEmpty ||
        birthDate.error.isNotEmpty ||
        gender.value.isEmpty ||
        gender.error.isNotEmpty ||
        password.value.isEmpty ||
        password.error.isNotEmpty ||
        confirmPassword.value.isEmpty ||
        confirmPassword.error.isNotEmpty) {
      return false;
    } else {
      return true;
    }
  }

  RegisterState copyWith(
          {ValidationItem? userNames,
          ValidationItem? userLastName,
          ValidationItem? email,
          ValidationItem? birthDate,
          ValidationItem? gender,
          ValidationItem? password}) =>
      RegisterState(
          userNames: userNames ?? this.userNames,
          userLastName: userLastName ?? this.userLastName,
          email: email ?? this.email,
          birthDate: birthDate ?? this.birthDate,
          gender: gender ?? this.gender,
          password: password ?? this.password);
}
