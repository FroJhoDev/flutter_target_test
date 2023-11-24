import 'package:mobx/mobx.dart';

import '../repositories/auth_repository.dart';

part 'login_base.g.dart';

enum Status {
  initial,
  loading,
  success,
  failure,
}

class LoginBase = _LoginBase with _$LoginBase;

abstract class _LoginBase with Store {

  final AuthRepository _authRepository = AuthRepository();

  @observable
  Status state = Status.initial;

  @action
  Future<void> signInUser({required String username, required String password}) async {

    try {

      state = Status.loading;

      await _authRepository.signInUser(username: username, password: password);

      state = Status.success;
      
    } catch (error) {
      state = Status.failure;
      await Future.delayed(const Duration(seconds: 5), () {
        state = Status.initial;
      });
    }

  }

}