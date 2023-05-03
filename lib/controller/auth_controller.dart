import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  FirebaseAuth auth= FirebaseAuth.instance;

  // Stream<User?> streamAuthStatus() {
  //   return auth.authStateChanges();
  // }
  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  void login (){}
  void logout (){}
  void signup (){}
}
