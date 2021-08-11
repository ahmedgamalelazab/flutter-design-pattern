import 'package:flutter/material.dart';

class Composite extends StatelessWidget {
  static const String SCREEN_ROUTE = "./Composite";
  const Composite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Composite'),
      ),
    );
  }
}
