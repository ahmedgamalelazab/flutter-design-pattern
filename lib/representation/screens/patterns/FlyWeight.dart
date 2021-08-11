import 'package:flutter/material.dart';

class FlyWeight extends StatelessWidget {
  static const String SCREEN_ROUTE = "./FlyWeight";
  const FlyWeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('FlyWeight'),
      ),
    );
  }
}
