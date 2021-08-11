import 'package:flutter/material.dart';

class Visitor extends StatelessWidget {
  static const String SCREEN_ROUTE = "./Visitor";
  const Visitor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Visitor'),
      ),
    );
  }
}
