import 'package:firebase_auth/firebase_auth.dart';
import 'package:heyyoumarket/domain/models/user_data.dart';
import 'package:heyyoumarket/domain/utils/resource.dart';

abstract class AuthRepository {
  // method of firebase auth
  User? get user;
  Future<Resource> login({required String email, required String password});
  Future<Resource> register(UserData userData);
  Future<void> logout();
}
