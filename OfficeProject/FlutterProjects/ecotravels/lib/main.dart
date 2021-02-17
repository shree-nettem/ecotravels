import 'package:ecotravels/helper/HexColor.dart';
import 'package:ecotravels/view/general/ContainerView.dart';
import 'package:ecotravels/view/login/LoginView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: HexColor("#ff753f"), // status bar color
      systemNavigationBarColor: Colors.white, // navigation bar color
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return GetMaterialApp(
      home: ContainerView(),
      theme: ThemeData(
          // Define the default brightness and colors.
          primaryTextTheme:
              TextTheme(bodyText1: TextStyle(color: HexColor('#42474f')))
          // Define the default font family.
          // fontFamily: 'Georgia',

          //added changes in my code deepak

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.

          ),
      debugShowCheckedModeBanner: true, //Removing Debug Banner
    );
  }
}
