import 'package:heyyoumarket/domain/models/user_data.dart';
import 'package:heyyoumarket/domain/repository/auth_repository.dart';

class RegisterUsecase {
  final AuthRepository _authRepository;

  RegisterUsecase(this._authRepository);

  launch(UserData userdata) => _authRepository.register(userdata);
}
