import 'package:flutter/material.dart';

import '../../representation/screens/HomePage.dart';
import '../../representation/screens/patterns/AbstractFactory.dart';
import '../../representation/screens/patterns/Adapter.dart';
import '../../representation/screens/patterns/Bridge.dart';
import '../../representation/screens/patterns/Builder.dart';
import '../../representation/screens/patterns/ChainOfResponibility.dart';
import '../../representation/screens/patterns/Command.dart';
import '../../representation/screens/patterns/Composite.dart';
import '../../representation/screens/patterns/Decorator.dart';
import '../../representation/screens/patterns/Facade.dart';
import '../../representation/screens/patterns/Factory.dart';
import '../../representation/screens/patterns/FlyWeight.dart';
import '../../representation/screens/patterns/Interpreter.dart';
import '../../representation/screens/patterns/Iterator.dart';
import '../../representation/screens/patterns/Mediator.dart';
import '../../representation/screens/patterns/Memento.dart';
import '../../representation/screens/patterns/Observer.dart';
import '../../representation/screens/patterns/ProtoType.dart';
import '../../representation/screens/patterns/Proxy.dart';
import '../../representation/screens/patterns/Singleton.dart';
import '../../representation/screens/patterns/State.dart';
import '../../representation/screens/patterns/Strategy.dart';
import '../../representation/screens/patterns/TemplateMethod.dart';
import '../../representation/screens/patterns/Visitor.dart';

class PatternScreensNavigator {
  static void NavigateToTargetPatternScreen(BuildContext context, int index) {
    switch (index) {
      case 1:
        Navigator.of(context).pushNamed(Singleton.SCREEN_ROUTE);
        break;
      case 2:
        Navigator.of(context).pushNamed(Adapter.SCREEN_ROUTE);
        break;
      case 3:
        Navigator.of(context).pushNamed(TemplateMethod.SCREEN_ROUTE);
        break;
      case 4:
        Navigator.of(context).pushNamed(Composite.SCREEN_ROUTE);
        break;
      case 5:
        Navigator.of(context).pushNamed(Strategy.SCREEN_ROUTE);
        break;
      case 6:
        Navigator.of(context).pushNamed(StatePattern.SCREEN_ROUTE);
        break;
      case 7:
        Navigator.of(context).pushNamed(Facade.SCREEN_ROUTE);
        break;
      case 8:
        Navigator.of(context).pushNamed(Interpreter.SCREEN_ROUTE);
        break;
      case 9:
        Navigator.of(context).pushNamed(Iterator.SCREEN_ROUTE);
        break;
      case 10:
        Navigator.of(context).pushNamed(Factory.SCREEN_ROUTE);
        break;
      case 11:
        Navigator.of(context).pushNamed(AbstractFactory.SCREEN_ROUTE);
        break;
      case 12:
        Navigator.of(context).pushNamed(Command.SCREEN_ROUTE);
        break;
      case 13:
        Navigator.of(context).pushNamed(Memento.SCREEN_ROUTE);
        break;
      case 14:
        Navigator.of(context).pushNamed(ProtoType.SCREEN_ROUTE);
        break;
      case 15:
        Navigator.of(context).pushNamed(Proxy.SCREEN_ROUTE);
        break;
      case 16:
        Navigator.of(context).pushNamed(Decorator.SCREEN_ROUTE);
        break;
      case 17:
        Navigator.of(context).pushNamed(Bridge.SCREEN_ROUTE);
        break;
      case 18:
        Navigator.of(context).pushNamed(BuilderPattern.SCREEN_ROUTE);
        break;
      case 19:
        Navigator.of(context).pushNamed(FlyWeight.SCREEN_ROUTE);
        break;
      case 20:
        Navigator.of(context).pushNamed(ChainOfResponsibility.SCREEN_ROUTE);
        break;
      case 21:
        Navigator.of(context).pushNamed(Visitor.SCREEN_ROUTE);
        break;
      case 22:
        Navigator.of(context).pushNamed(Mediator.SCREEN_ROUTE);
        break;
      case 23:
        Navigator.of(context).pushNamed(Observer.SCREEN_ROUTE);
        break;
      default:
        Navigator.of(context).pushNamed(Singleton.SCREEN_ROUTE);
        break;
    }
  }
}
