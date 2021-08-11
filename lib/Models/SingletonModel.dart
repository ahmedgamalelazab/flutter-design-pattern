//in this file we will provide the data class and it's singleton controller to control and spread the data in the whole application

import 'package:flutter/material.dart';

///this is working like state storage
abstract class ExampleStateBase {
  @protected
  String? initialText;
  @protected
  String? stateText;

  String getCurrentState() =>
      this.stateText ?? initialText ?? "no data established";

  void setStateText(String text) {
    this.stateText = text;
  }

  void reset() {
    stateText = initialText;
  }
}

//singleton implementation pattern

class SingletonOldSyntaxImplementation extends ExampleStateBase {
  static SingletonOldSyntaxImplementation? _instatnce;

  SingletonOldSyntaxImplementation._internal() {
    this.initialText = "singleton initial Data from Original syntax";
    this.stateText = initialText;
    print('Original Singleton Syntax Object called');
  }

  static SingletonOldSyntaxImplementation getInstance() {
    if (_instatnce == null) {
      _instatnce = SingletonOldSyntaxImplementation._internal();
    }
    return _instatnce ?? SingletonOldSyntaxImplementation._internal();
  }
}

class SingletonDartNewSyntaxImplementation extends ExampleStateBase {
  static final SingletonDartNewSyntaxImplementation _instance =
      SingletonDartNewSyntaxImplementation._internal();

  factory SingletonDartNewSyntaxImplementation() {
    return _instance;
  }

  SingletonDartNewSyntaxImplementation._internal() {
    this.initialText = "dart singleton initial Data from Dart syntax";
    this.stateText = initialText;
    print('Original Singleton Syntax Object called');
  }
}

//this one will not use the singleton pattern

class ExampleWithNotSingleton extends ExampleStateBase {
  ExampleWithNotSingleton() {
    this.initialText = "Without singleton initial Data from Dart syntax";
    this.stateText = initialText;
    print('without Singleton Syntax Object called');
  }
}
