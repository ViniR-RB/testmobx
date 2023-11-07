import 'package:mobx/mobx.dart';
part 'user_model.g.dart';

class UserModel = UserModelBase with _$UserModel;

abstract class UserModelBase with Store {
  @observable
  String username = "";
  @action
  changeUserName(String newUserName) => username = newUserName;
  @observable
  String password = "";
  @action
  changePassword(String newPasword) => password = newPasword;
}