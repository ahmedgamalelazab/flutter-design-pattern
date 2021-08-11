import 'package:flutter/material.dart';

class Memento extends StatelessWidget {
  static const String SCREEN_ROUTE = "./Memento";
  const Memento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Memento'),
      ),
    );
  }
}
