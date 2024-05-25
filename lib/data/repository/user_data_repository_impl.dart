import 'package:heyyoumarket/domain/models/user_data.dart';
import 'package:heyyoumarket/domain/repository/user_data_repository.dart';
import 'package:heyyoumarket/domain/utils/resource.dart';

class UserDataRepositoryImpl implements UserDataRepository {
  @override
  Stream<Resource<UserData>> getUserId(String id) {
    // TODO: implement getUserId
    throw UnimplementedError();
  }
}
