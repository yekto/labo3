import 'package:flutter/material.dart';

class Buttons1 extends StatelessWidget {
  final String? text;
  final Widget widgetpush;

  const Buttons1({Key? key, required this.text, required this.widgetpush,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => widgetpush,));
      },
      child: Text(
        "$text",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
