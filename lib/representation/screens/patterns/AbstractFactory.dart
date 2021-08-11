import 'package:flutter/material.dart';

class AbstractFactory extends StatelessWidget {
  static const String SCREEN_ROUTE = "./AbstractFactory";
  const AbstractFactory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('AbstractFactory'),
      ),
    );
  }
}
