import 'package:flutter/material.dart';
import 'package:flutter_getx_template/controllers/user_controller.dart';
import 'package:flutter_getx_template/models/user_model.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print(Get.arguments);
    //print(Get.arguments['nome']);
    final userController = Get.find<UserController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    userController.saveUser(
                      userData: UserModel(
                          age: 23,
                          name: "Lucas",
                          professions: []),
                    );

                    Get.snackbar("Sucesso!", "Dados cadastrados com sucesso!");
                  },
                  minWidth: double.infinity,
                  child: Text(
                    'Definir Usuário',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                ),
                MaterialButton(
                  onPressed: () {
                    userController.changeAge(age: 24);
                  },
                  minWidth: double.infinity,
                  child: Text(
                    'Mudar idade',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  onPressed: () {
                    userController.addProfession(profession: "Analista de sistemas");
                  },
                  child: Text(
                    'Adicionar Profissão',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  onPressed: () {
                    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                  },
                  child: Text(
                    'Mudar tema',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
