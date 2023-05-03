import 'package:flutter/material.dart';
import 'package:labo3/widgets/myTextFormField.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text("Signup Page")
    //       ],
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Column(
        children: [
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: "email",
            ),
          ),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              hintText: "password",
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("SignUp"),
          )
        ],
      ),
    );
  }
}
