import 'package:firebase_auth/firebase_auth.dart';
import 'package:heyyoumarket/di/firebase_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  //esto es para que se inicie lo mas pronto posible
  // @preResolve
  Future<FirebaseService> get firebaseService => FirebaseService.init();

  @injectable
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}
