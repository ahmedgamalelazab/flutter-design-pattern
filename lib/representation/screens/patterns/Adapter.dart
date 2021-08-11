import 'package:flutter/material.dart';

class Adapter extends StatelessWidget {
  static const String SCREEN_ROUTE = "./Adapter";
  const Adapter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Adapter'),
      ),
    );
  }
}
