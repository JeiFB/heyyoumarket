import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromJson(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toJson());

class UserData {
  String id;
  String userName;
  String email;
  String password;
  String birthDate;
  String gender;

  UserData({
    this.id = '',
    this.userName = '',
    this.email = '',
    this.password = '',
    this.birthDate = '',
    this.gender = '',
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"] ?? '',
        userName: json["userName"] ?? '',
        email: json["email"] ?? '',
        password: json["password"] ?? '',
        birthDate: json["birthDate"] ?? '',
        gender: json["gender"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userName": userName,
        "email": email,
        "password": password,
        "birthDate": birthDate,
        "gender": gender,
      };
}
