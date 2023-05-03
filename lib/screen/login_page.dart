import 'package:flutter/material.dart';
import 'package:labo3/screen/signup_page.dart';
import 'package:labo3/widgets/buttons2.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "email",
              ),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "password",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ));
                },
                child: Text("go to register")),
            ElevatedButton(
              onPressed: () {
                emailController.clear();
              },
              child: Text("Login"),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Login Page"),
            Buttons2(text: "Back to Main"),
          ],
        ),
      ),
    );
  }
}
