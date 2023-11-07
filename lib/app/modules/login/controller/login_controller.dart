import 'package:mobx/mobx.dart';

import '../../../core/models/user_model.dart';

part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  final userModel = UserModel();

  @computed
  bool get isValid {
    return validatePassword() == null && validatePassword() == null;
  }

  String? validateUserName() {
    if (userModel.username.length <= 2) {
      return "O campo username não pode ter menos que dois caracteres.";
    }
    RegExp regex = RegExp(r'[^a-zA-Z0-9_]');

    if (regex.hasMatch(userModel.username)) {
      return "O campo username não pode ter caracteres especiais";
    }
    if (userModel.username.length > 20) {
      return "O campo username não pode ter ate vinte caracteres.";
    }
    int userNameLength = userModel.username.length;
    if (userModel.username[userNameLength - 1].contains(" ")) {
      return "O campo username não pode ter um espaço no final";
    }
    return null;
  }

  String? validatePassword() {
    if (userModel.password.length <= 2) {
      return "O campo senha não pode ter menos que dois caracteres.";
    }
    RegExp regex = RegExp(r'[^a-zA-Z0-9_]');

    if (regex.hasMatch(userModel.password)) {
      return "O campo senha não pode ter caracteres especiais";
    }
    if (userModel.password.length > 20) {
      return "O campo senha não pode ter ate vinte caracteres.";
    }
    int passwordLength = userModel.password.length;
    if (userModel.password[passwordLength - 1].contains(" ")) {
      return "O campo senha não pode ter um espaço no final";
    }
    return null;
  }
}
