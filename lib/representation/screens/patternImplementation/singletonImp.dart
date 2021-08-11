import 'package:complete_patterns/Models/SingletonModel.dart';
import 'package:flutter/material.dart';

import '../../../enums/enums.dart';
import '../../utils/ArticleText.dart';
import '../../utils/TextHelper.dart';

class SingletonImplementation extends StatefulWidget {
  static const String SCREEN_ROUTE = './SingletonImplementation';
  SingletonImplementation({Key? key}) : super(key: key);

  @override
  _SingletonImplementationState createState() =>
      _SingletonImplementationState();
}

class _SingletonImplementationState extends State<SingletonImplementation> {
  List<ExampleStateBase> data = [
    SingletonOldSyntaxImplementation.getInstance(),
    SingletonDartNewSyntaxImplementation(),
    ExampleWithNotSingleton(),
  ];

  _changeData() {
    setState(() {
      data[0].setStateText('changed Singleton Original !!');
      data[1].setStateText('changed Dart Singleton Syntax !!');
      data[2].setStateText('changed Without Singleton Original !!');
    });
  }

  _resetData() {
    setState(() {
      data[0].reset();
      data[1].reset();
      data[2].reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleTon Implementation'),
      ),
      body: Container(
        width: deviceWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ArticleText(
              supportJustifying: true,
              contentText: data[0].getCurrentState(),
              textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
            ),
            ArticleText(
              supportJustifying: true,
              contentText: data[1].getCurrentState(),
              textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
            ),
            ArticleText(
              supportJustifying: true,
              contentText: data[2].getCurrentState(),
              textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('Change Data'),
                onPressed: () {
                  _changeData();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  minimumSize: MaterialStateProperty.all(
                    Size(deviceWidth * 0.8, deviceHeight * 0.070),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('reset Data'),
                onPressed: () {
                  _resetData();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  minimumSize: MaterialStateProperty.all(
                    Size(deviceWidth * 0.8, deviceHeight * 0.070),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
