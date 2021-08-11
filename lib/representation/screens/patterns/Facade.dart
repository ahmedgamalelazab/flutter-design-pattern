import 'package:flutter/material.dart';

class Facade extends StatelessWidget {
  static const String SCREEN_ROUTE = "./Facade";
  const Facade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Facade'),
      ),
    );
  }
}
