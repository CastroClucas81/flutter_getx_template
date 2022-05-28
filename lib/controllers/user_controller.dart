import 'package:flutter_getx_template/models/user_model.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  RxBool issetUser = false.obs;
  Rx<UserModel> user = UserModel().obs;

  void saveUser({required UserModel userData}) {
    issetUser.value = true;

    user.value = userData;
  }

  void changeAge({required int age}) {
    user.update((val) { 
      val!.age = age;
    });
  }

  void addProfession({required String profession}) {
    user.update((val) {
      val!.professions = [
        ...val.professions!,
        profession
      ];
     });
  }
}
