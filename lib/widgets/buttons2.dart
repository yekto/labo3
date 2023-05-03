import 'package:flutter/material.dart';

class Buttons2 extends StatelessWidget {
  final String? text;

  const Buttons2({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed: () {
        Navigator.pop(context);
      },style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: Text(
        "$text",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,),
      ),
    );
  }
}
