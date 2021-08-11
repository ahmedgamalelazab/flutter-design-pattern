import 'package:flutter/cupertino.dart';

import '../representation/screens/HomePage.dart';
import '../representation/screens/patterns/AbstractFactory.dart';
import '../representation/screens/patterns/Adapter.dart';
import '../representation/screens/patterns/Bridge.dart';
import '../representation/screens/patterns/Builder.dart';
import '../representation/screens/patterns/ChainOfResponibility.dart';
import '../representation/screens/patterns/Command.dart';
import '../representation/screens/patterns/Composite.dart';
import '../representation/screens/patterns/Decorator.dart';
import '../representation/screens/patterns/Facade.dart';
import '../representation/screens/patterns/Factory.dart';
import '../representation/screens/patterns/FlyWeight.dart';
import '../representation/screens/patterns/Interpreter.dart';
import '../representation/screens/patterns/Iterator.dart';
import '../representation/screens/patterns/Mediator.dart';
import '../representation/screens/patterns/Memento.dart';
import '../representation/screens/patterns/Observer.dart';
import '../representation/screens/patterns/ProtoType.dart';
import '../representation/screens/patterns/Proxy.dart';
import '../representation/screens/patterns/Singleton.dart';
import '../representation/screens/patterns/State.dart';
import '../representation/screens/patterns/Strategy.dart';
import '../representation/screens/patterns/TemplateMethod.dart';
import '../representation/screens/patterns/Visitor.dart';
import '../representation/screens/patternImplementation/singletonImp.dart';

class ApplicationRoutes {
  static Map<String, Widget Function(BuildContext context)> routes() {
    return {
      HomePage.SCREEN_ROUTE: (context) => HomePage(),
      Singleton.SCREEN_ROUTE: (context) => Singleton(),
      Adapter.SCREEN_ROUTE: (context) => Adapter(),
      TemplateMethod.SCREEN_ROUTE: (context) => TemplateMethod(),
      Composite.SCREEN_ROUTE: (context) => Composite(),
      Strategy.SCREEN_ROUTE: (context) => Strategy(),
      StatePattern.SCREEN_ROUTE: (context) => StatePattern(),
      Facade.SCREEN_ROUTE: (context) => Facade(),
      Interpreter.SCREEN_ROUTE: (context) => Interpreter(),
      Iterator.SCREEN_ROUTE: (context) => Iterator(),
      Factory.SCREEN_ROUTE: (context) => Factory(),
      AbstractFactory.SCREEN_ROUTE: (context) => AbstractFactory(),
      Command.SCREEN_ROUTE: (context) => Command(),
      Memento.SCREEN_ROUTE: (context) => Memento(),
      ProtoType.SCREEN_ROUTE: (context) => ProtoType(),
      Proxy.SCREEN_ROUTE: (context) => Proxy(),
      Decorator.SCREEN_ROUTE: (context) => Decorator(),
      Bridge.SCREEN_ROUTE: (context) => Bridge(),
      BuilderPattern.SCREEN_ROUTE: (context) => BuilderPattern(),
      FlyWeight.SCREEN_ROUTE: (context) => FlyWeight(),
      ChainOfResponsibility.SCREEN_ROUTE: (context) => ChainOfResponsibility(),
      Visitor.SCREEN_ROUTE: (context) => Visitor(),
      Mediator.SCREEN_ROUTE: (context) => Mediator(),
      Observer.SCREEN_ROUTE: (context) => Observer(),
      SingletonImplementation.SCREEN_ROUTE: (context) =>
          SingletonImplementation(),
    };
  }

  //works like factory patterns
  static String getInitialRoute() {
    return HomePage.SCREEN_ROUTE;
  }
}
