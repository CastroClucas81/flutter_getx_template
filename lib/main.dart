import 'package:flutter/material.dart';
import 'package:flutter_getx_template/screens/page_one.dart';
import 'package:flutter_getx_template/screens/page_two.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: "/page-one",
      getPages: [
        GetPage(
          name: "/page-one",
          page: () => PageOne(),
        ),
        GetPage(
          name: "/page-two",
          page: () => PageTwo(),
        ),
      ],
    );
  }
}
