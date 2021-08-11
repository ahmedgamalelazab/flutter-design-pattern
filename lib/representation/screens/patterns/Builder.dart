import 'package:flutter/material.dart';

class BuilderPattern extends StatelessWidget {
  static const String SCREEN_ROUTE = "./BuilderPattern";
  const BuilderPattern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('BuilderPattern'),
      ),
    );
  }
}
