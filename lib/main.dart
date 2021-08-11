import 'package:flutter/material.dart';

import './routes/ApplicationRoutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: ApplicationRoutes.routes(),
      initialRoute: ApplicationRoutes.getInitialRoute(),
    );
  }
}
