// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:heyyoumarket/data/repository/auth_repository_impl.dart' as _i6;
import 'package:heyyoumarket/di/app_module.dart' as _i8;
import 'package:heyyoumarket/di/firebase_service.dart' as _i3;
import 'package:heyyoumarket/domain/use_cases/auth/auth_usecases.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i3.FirebaseService>(
      () => appModule.firebaseService,
      preResolve: true,
    );
    gh.factory<_i4.FirebaseAuth>(() => appModule.firebaseAuth);
    gh.factory<_i5.FirebaseFirestore>(() => appModule.firebaseFirestore);
    gh.factory<_i6.AuthRepositoryImpl>(() => appModule.authRepository);
    gh.factory<_i7.AuthUsecases>(() => appModule.authUsecases);
    gh.factory<_i5.CollectionReference<Object?>>(
      () => appModule.userRef,
      instanceName: 'users',
    );
    return this;
  }
}

class _$AppModule extends _i8.AppModule {}
