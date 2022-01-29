import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kawal_corona/controller/authentication_controller.dart';
import 'package:kawal_corona/pages/goto_screen.dart';
import 'package:kawal_corona/pages/navigation.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kawal Corona',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: GotoScreen(),
    );
  }
}
