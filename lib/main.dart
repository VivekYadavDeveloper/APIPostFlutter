import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:api_get/user_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fiestup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        duration: 5000,
        splashIconSize: 500,
        splash: "assets/logo.png",
        splashTransition: SplashTransition.slideTransition,
        nextScreen: const UserInfo(),
      ),
    );
  }
}
