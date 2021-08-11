import 'package:flutter/material.dart';

class Bridge extends StatelessWidget {
  static const String SCREEN_ROUTE = "./Bridge";
  const Bridge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bridge'),
      ),
    );
  }
}
