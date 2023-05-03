import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:labo3/controller/auth_controller.dart';
import 'package:labo3/screen/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:labo3/screen/loading_page.dart';
import 'package:labo3/screen/login_page.dart';
import 'firebase_options.dart';
import '../controller/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AuthC = Get.put(AuthController(), permanent: true);

  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return StreamBuilder<User?>(
    //   stream: AuthC.streamAuthStatus,
    //   builder: (context, snapshot) {
    //     print(snapshot.data.toString());
    //     if (snapshot.hasData == ConnectionState.active) {
    //       print(snapshot.data.toString());
    //       return MaterialApp(
    //         title: 'Flutter Demo',
    //         theme: ThemeData(
    //           primarySwatch: Colors.blue,
    //         ),
    //         home: snapshot.data == null ? HomePage(): LoadingPage(),
    //       );
    //     }
    //     return LoadingPage();
    //   },
    // );
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );

  }
}
