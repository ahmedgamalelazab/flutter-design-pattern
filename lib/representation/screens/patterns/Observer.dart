import 'package:flutter/material.dart';

class Observer extends StatelessWidget {
  static const String SCREEN_ROUTE = "./Observer";
  const Observer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Observer'),
      ),
    );
  }
}
