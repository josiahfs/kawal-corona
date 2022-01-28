import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kawal_corona/controller/authentication_controller.dart';
import 'package:kawal_corona/pages/home.dart';
import 'package:kawal_corona/pages/login_screen.dart';
import 'package:kawal_corona/pages/goto_screen.dart';
import 'package:kawal_corona/pages/navigation.dart';
import 'package:kawal_corona/pages/statistic_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kawal Corona',
      home: GotoScreen(),
    );
  }
}
