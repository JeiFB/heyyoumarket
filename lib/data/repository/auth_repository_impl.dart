import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:heyyoumarket/domain/models/user_data.dart';
import 'package:heyyoumarket/domain/repository/auth_repository.dart';
import 'package:heyyoumarket/domain/utils/resource.dart';
import 'package:injectable/injectable.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final CollectionReference _userRef;

  AuthRepositoryImpl(this._firebaseAuth, @Named('user') this._userRef);

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
  Future<Resource> register(UserData userData) async {
    try {
      UserCredential data = await _firebaseAuth.signInWithEmailAndPassword(
          email: userData.email, password: userData.password);
      userData.password;
      userData.id = data.user?.uid ?? "";
      await _userRef.doc(userData.id).set(userData.toJson());
      return Success(data);
    } on FirebaseAuthException catch (e) {
      return Error(e.code);
    }
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
