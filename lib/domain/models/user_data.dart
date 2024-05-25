// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromJson(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toJson());

class UserData {
  String id;
  String nombres;
  String apellidos;
  String correo;
  String fechaNacimiento;
  String sexo;

  UserData({
    this.id = '',
    this.nombres = '',
    this.apellidos = '',
    this.correo = '',
    this.fechaNacimiento = '',
    this.sexo = '',
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"] ?? '',
        nombres: json["nombres"] ?? '',
        apellidos: json["apellidos"] ?? '',
        correo: json["correo"] ?? '',
        fechaNacimiento: json["fechaNacimiento"] ?? '',
        sexo: json["sexo"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombres": nombres,
        "apellidos": apellidos,
        "correo": correo,
        "fechaNacimiento": fechaNacimiento,
        "sexo": sexo,
      };
}
