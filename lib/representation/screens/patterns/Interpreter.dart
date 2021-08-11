import 'package:flutter/material.dart';

class Interpreter extends StatelessWidget {
  static const String SCREEN_ROUTE = "./Interpreter";
  const Interpreter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Interpreter'),
      ),
    );
  }
}
