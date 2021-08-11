import 'package:flutter/material.dart';

import '../utils/patternsSupport.dart';

import '../utils/PatternScreensNavigator.dart';

class HomePage extends StatelessWidget {
  static const String SCREEN_ROUTE = './HomePage';
  late PatternsSupport support;
  HomePage({Key? key}) : super(key: key) {
    support = new PatternsSupport();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: support.getListOfPatterns().length,
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              child: Text((index + 1).toString()),
            ),
            title: Text(
              support.getListOfPatterns()[index],
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text('pattern'),
            trailing: IconButton(
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  print(index + 1);
                  PatternScreensNavigator.NavigateToTargetPatternScreen(
                      context, (index + 1));
                }),
          ),
        ),
      ),
    );
  }
}
