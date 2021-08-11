import 'package:flutter/material.dart';

class Command extends StatelessWidget {
  static const String SCREEN_ROUTE = "./Command";
  const Command({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Command'),
      ),
    );
  }
}
