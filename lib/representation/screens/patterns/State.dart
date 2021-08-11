import 'package:flutter/material.dart';

class StatePattern extends StatelessWidget {
  static const String SCREEN_ROUTE = "./StatePattern";
  const StatePattern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('StatePattern'),
      ),
    );
  }
}
