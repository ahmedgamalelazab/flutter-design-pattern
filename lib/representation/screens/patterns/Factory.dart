import 'package:flutter/material.dart';

class Factory extends StatelessWidget {
  static const String SCREEN_ROUTE = "./Factory";
  const Factory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Factory'),
      ),
    );
  }
}
