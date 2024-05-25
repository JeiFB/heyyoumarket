import 'package:heyyoumarket/domain/models/user_data.dart';
import 'package:heyyoumarket/domain/utils/resource.dart';

abstract class UserDataRepository {
  Stream<Resource<UserData>> getUserId(String id);
}
