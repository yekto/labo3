import 'package:flutter/material.dart';
import 'package:labo3/widgets/buttons2.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login Page"),
            Buttons2(text: "Back to Main")
          ],
        ),
      ),
    );
  }
}
