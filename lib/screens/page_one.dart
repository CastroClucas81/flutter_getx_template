import 'package:flutter/material.dart';
import 'package:flutter_getx_template/controllers/user_controller.dart';
import 'package:flutter_getx_template/models/user_model.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        //Get.off - Get.offAll
        onPressed: () => Get.toNamed(
          '/page-two',
          arguments: {
            'nome': 'dataprime',
            'idade': 49,
          },
        ),
      ),
      body: SafeArea(
        child: Obx(
          () => userController.issetUser.value
              ? _issetUser(user: userController.user.value)
              : _undefinedUser(),
        ),
      ),
    );
  }

  Widget _undefinedUser() {
    return Container(
      child: Center(
        child: Text("Usuário não definido."),
      ),
    );
  }

  Widget _issetUser({UserModel? user}) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Dados pessoais",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListTile(
            title: Text('Nome: ${user!.name}'),
          ),
          ListTile(
            title: Text('idade: ${user.age}'),
          ),
          Text(
            "Profissões",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Column(
            children: List.generate(
              user.professions!.length,
              (index) => ListTile(
                title: Text("${user.professions![index]}"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
