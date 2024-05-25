import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:heyyoumarket/data/repository/auth_repository_impl.dart';
import 'package:heyyoumarket/di/firebase_service.dart';
import 'package:heyyoumarket/domain/use_cases/auth/auth_usecases.dart';
import 'package:heyyoumarket/domain/use_cases/auth/login_usecase.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  //esto es para que se inicie lo mas pronto posible
  @preResolve
  Future<FirebaseService> get firebaseService => FirebaseService.init();

  //Instaces of firebase
  @injectable
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @injectable
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @injectable
  AuthRepositoryImpl get authRepository => AuthRepositoryImpl(firebaseAuth);

  //usecases
  @injectable
  AuthUsecases get authUsecases =>
      AuthUsecases(login: LoginUsecase(authRepository));
}
