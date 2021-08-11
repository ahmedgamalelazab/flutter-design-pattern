import 'package:flutter/material.dart';

class TemplateMethod extends StatelessWidget {
  static const String SCREEN_ROUTE = "./TemplateMethod";
  const TemplateMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('TemplateMethod'),
      ),
    );
  }
}
