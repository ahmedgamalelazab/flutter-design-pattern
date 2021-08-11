import 'package:flutter/material.dart';

class Mediator extends StatelessWidget {
  static const String SCREEN_ROUTE = "./Mediator";
  const Mediator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Mediator'),
      ),
    );
  }
}
