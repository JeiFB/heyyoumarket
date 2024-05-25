import 'package:firebase_auth/firebase_auth.dart';
import 'package:heyyoumarket/domain/models/user_data.dart';
import 'package:heyyoumarket/domain/repository/auth_repository.dart';
import 'package:heyyoumarket/domain/utils/resource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth;

  AuthRepositoryImpl(this._firebaseAuth);

  @override
  Future<Resource> login(
      {required String email, required String password}) async {
    try {
      UserCredential data = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return Success(data);
    } on FirebaseAuthException catch (e) {
      return Error(e.code);
    }
  }

  @override
  Future<Resource> register(UserData userData) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<void> logout() async {
    try {} on FirebaseAuthException catch (e) {}
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  // TODO: implement user
  User? get user => throw UnimplementedError();
}
