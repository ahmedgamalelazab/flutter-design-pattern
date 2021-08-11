import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import '../../../enums/enums.dart';
import '../../utils/ArticleImageViewer.dart';
import '../../utils/ArticleText.dart';
import '../../utils/TextHelper.dart';
import '../patternImplementation/singletonImp.dart';

class Singleton extends StatelessWidget {
  static const String SCREEN_ROUTE = "./Singleton";
  const Singleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: ListView(
        children: [
          ArticleText(
            supportJustifying: true,
            contentText: 'what is the Singleton Pattern ?',
            textStyle: HelperText.getProperTextStyle(textType: TextType.HEADER),
          ),
          ArticleText(
            supportJustifying: true,
            contentText:
                'Singleton is a creational design pattern that ensures that a class has only one instance and also provides a global point of access to it .',
            textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
          ),
          ArticleText(
            supportJustifying: true,
            contentText: 'Pattern Idea :',
            textStyle: HelperText.getProperTextStyle(textType: TextType.HEADER),
          ),
          ArticleText(
            supportJustifying: true,
            contentText:
                'The main idea of this pattern is to make a class itself responsible for keeping track of its sole instance. Singleton is considered one of the simplest design patterns but it is also an easy one to get wrong if you are not careful.',
            textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
          ),
          ArticleText(
            supportJustifying: true,
            contentText: 'Class diagram and basic structure :',
            textStyle: HelperText.getProperTextStyle(textType: TextType.HEADER),
          ),
          ArticleText(
            supportJustifying: true,
            contentText:
                'A general approach to the implementation of Singleton is represented in the class diagram below :',
            textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
          ),
          ArticleImageViewer(
            deviceWidth: deviceWidth * 0.8,
            deviceHeight: deviceHeight * 0.3,
            boxFit: BoxFit.contain,
            imageAssetPath: 'assets/singleton/uml.png',
          ),
          BulletedList(
            bullet: Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            listItems: [
              ArticleText(
                supportJustifying: true,
                contentText:
                    'Singleton class contains the static property instance which is a reference to the class instance itself (this relationship is represented as an association link from the class Singleton to itself);',
                textStyle:
                    HelperText.getProperTextStyle(textType: TextType.BULLETS),
              ),
              ArticleText(
                supportJustifying: true,
                contentText:
                    'This instance is only accessible through the static method getInstance();',
                textStyle:
                    HelperText.getProperTextStyle(textType: TextType.BULLETS),
              ),
              ArticleText(
                supportJustifying: true,
                contentText:
                    'Class constructor is marked as private (it could be protected in other implementations) to ensure that the class could not be instantiated from outside the class.',
                textStyle:
                    HelperText.getProperTextStyle(textType: TextType.BULLETS),
              ),
            ],
          ),
          ArticleText(
            supportJustifying: true,
            contentText: 'Applicability :',
            textStyle: HelperText.getProperTextStyle(textType: TextType.HEADER),
          ),
          ArticleText(
            supportJustifying: true,
            contentText:
                'Singleton could be used in cases where creating the instance of a class is expensive e.g. instantiating a class requires loading a lot of data from external sources. Also, the pattern helps when you need to access the same object over and over again across your code e.g. logger (this problem is usually resolved by applying another design pattern — dependency injection, but that’s a topic for the future 😊). Singleton could also be used when some kind of caching layer is needed — the singleton class could check and manage the cache on the instance request, From my experience i use singleton with User Authentication Process, store user data in it .',
            textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
          ),
          ArticleText(
            supportJustifying: true,
            contentText: 'General thoughts and dangers :',
            textStyle: HelperText.getProperTextStyle(textType: TextType.HEADER),
          ),
          BulletedList(
            bullet: Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            listItems: [
              ArticleText(
                supportJustifying: true,
                contentText:
                    'When designing a Singleton, lazy construction should be considered — class instance should only be created when it is first needed;',
                textStyle:
                    HelperText.getProperTextStyle(textType: TextType.BULLETS),
              ),
              ArticleText(
                supportJustifying: true,
                contentText:
                    'In general, the Singleton class should not require parameters for its construction. If your class design requires a parameter, it could lead to the creation of a somehow different object based on that parameter — could this class still be called a Singleton, then? Some resources state that this is a valid approach, but I have a different opinion;',
                textStyle:
                    HelperText.getProperTextStyle(textType: TextType.BULLETS),
              ),
              ArticleText(
                supportJustifying: true,
                contentText:
                    "Thread safety — you should be aware of Singletons in multi-threaded applications. If they hold some kind of mutable data, it could lead to unexpected results, so the synchronization mechanism should be considered.Since we are talking about the Dart programming language in this series, you should know that Dart is a single-threaded programming language and its code runs in a little isolated space on the machine, called isolate. Hence, you should not worry about the thread-safety when implementing Singletons in Dart as long as you do not create a new separate isolate from the code by yourself. ",
                textStyle:
                    HelperText.getProperTextStyle(textType: TextType.BULLETS),
              ),
              ArticleText(
                supportJustifying: true,
                contentText:
                    "In some cases, the Singleton design pattern is considered an anti-pattern. That is because it violates one (actually, more than one, but this example, in my opinion, is the best one) of the SOLID principles — the single responsibility principle. In addition to the main responsibility of the Singleton class, it should also manage its instance lifetime which is a separate concern. Also, the use of Singletons makes it difficult to unit test the code since it is not possible to mock a Singleton unless you provide some kind of interface that serves as its type.",
                textStyle:
                    HelperText.getProperTextStyle(textType: TextType.BULLETS),
              ),
            ],
          ),
          ArticleText(
            supportJustifying: true,
            contentText: 'Implementation :',
            textStyle: HelperText.getProperTextStyle(textType: TextType.HEADER),
          ),
          ArticleText(
            supportJustifying: true,
            contentText:
                'We will use the Singleton design pattern to save our Singleton example’s state in the Flutter Design Patterns application. To make it more straightforward, the state saves only a single text property. Example’s state itself is implemented in three different ways:',
            textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
          ),
          BulletedList(
            bullet: Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            listItems: [
              ArticleText(
                supportJustifying: true,
                contentText:
                    'Using a Singleton design pattern which is implemented by definition;',
                textStyle:
                    HelperText.getProperTextStyle(textType: TextType.BULLETS),
              ),
              ArticleText(
                supportJustifying: true,
                contentText:
                    'Using a Singleton design pattern which is implemented using the Dart language capabilities;',
                textStyle:
                    HelperText.getProperTextStyle(textType: TextType.BULLETS),
              ),
              ArticleText(
                supportJustifying: true,
                contentText: "Without using a Singleton at all. ",
                textStyle:
                    HelperText.getProperTextStyle(textType: TextType.BULLETS),
              ),
            ],
          ),
          ArticleText(
            supportJustifying: true,
            contentText: 'ExampleStateBase :',
            textStyle: HelperText.getProperTextStyle(textType: TextType.HEADER),
          ),
          ArticleText(
            supportJustifying: true,
            contentText:
                'Since the example’s state is implemented in several different ways, its abstraction was created in order to reuse it in all of the implementations. Hence, class ExampleStateBase provides this abstracted state:',
            textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
          ),
          ArticleImageViewer(
            boxFit: BoxFit.cover,
            deviceWidth: deviceWidth,
            deviceHeight: deviceHeight * 0.5,
            imageAssetPath: 'assets/singleton/baseClass.png',
          ),
          ArticleText(
            supportJustifying: true,
            contentText:
                'As already mentioned, the example’s state consists only of a single String property stateText and its initial value initialText. Properties stateText ant initialText are marked as protected — it is needed to make these properties accessible only for those classes which extend the ExampleStateBase class. However, Dart does not support the protected visibility in the same way as some of you could expect it to be coming from the other OOP language’s background such as C# or Java — we can only annotate these properties as protected but it is more as a reminder for the developer not to use them from outside of the class scope (Visual Studio Code editor even shows a warning in this case). Also, ExampleStateBase provides methods to operate the stateText.',
            textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
          ),
          ArticleText(
            supportJustifying: false,
            contentText: 'Singleton’s implementation by definition :',
            textStyle: HelperText.getProperTextStyle(textType: TextType.HEADER),
          ),
          ArticleText(
            supportJustifying: true,
            contentText:
                'In the class diagram below, concrete classes of the Flutter Design Patterns application are represented which implement the Singleton design pattern by definition.',
            textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
          ),
          ArticleImageViewer(
            boxFit: BoxFit.contain,
            deviceWidth: deviceWidth,
            deviceHeight: deviceHeight * 0.6,
            imageAssetPath: 'assets/singleton/implementation.png',
          ),
          BulletedList(
            bullet: Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            listItems: [
              ArticleText(
                supportJustifying: true,
                contentText:
                    'ExampleStateByDefinition extends the ExampleStateBase class to obtain access to the state (in this case, stateText and initialText) and its methods.',
                textStyle:
                    HelperText.getProperTextStyle(textType: TextType.BULLETS),
              ),
              ArticleText(
                supportJustifying: true,
                contentText:
                    'ExampleStateByDefinition implements the Singleton design pattern and handles the instance creation. The instance is only accessible through the static method getState().',
                textStyle:
                    HelperText.getProperTextStyle(textType: TextType.BULLETS),
              ),
            ],
          ),
          ArticleText(
            supportJustifying: true,
            contentText: 'Code ExampleStateByDefinition:',
            textStyle: HelperText.getProperTextStyle(textType: TextType.HEADER),
          ),
          ArticleImageViewer(
            boxFit: BoxFit.cover,
            deviceWidth: deviceWidth,
            deviceHeight: deviceHeight * 0.3,
            imageAssetPath: 'assets/singleton/staticImp.png',
          ),
          ArticleText(
            supportJustifying: true,
            contentText: 'Using dart Syntax:',
            textStyle: HelperText.getProperTextStyle(textType: TextType.HEADER),
          ),
          ArticleImageViewer(
            boxFit: BoxFit.cover,
            deviceWidth: deviceWidth,
            deviceHeight: deviceHeight * 0.3,
            imageAssetPath: 'assets/singleton/dartSyntax.png',
          ),
          ArticleText(
            supportJustifying: true,
            contentText:
                'By comparing this code with the previous implementation, you could notice that the static method getState() is missing — well, it is just not needed anymore! Dart language provides a factory constructor. It is used to implement a constructor that does not always create a new instance of its class — it is a nice and elegant way to implement the class as a Singleton, isn’t it? Now you can create the instance of ExampleState class by calling its factory constructor in the same manner as you would do that by calling a default one — factory constructor will create a new instance or return the existing one if it was already initiated.',
            textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
          ),
          ArticleText(
            supportJustifying: true,
            contentText: 'ExampleStateWithoutSingleton:',
            textStyle: HelperText.getProperTextStyle(textType: TextType.HEADER),
          ),
          ArticleText(
            supportJustifying: true,
            contentText:
                'Just a simple implementation of the state class without bothering it with Singleton or any other ”fancy-schmancy” design patterns.',
            textStyle: HelperText.getProperTextStyle(textType: TextType.BODY),
          ),
          ArticleImageViewer(
            boxFit: BoxFit.cover,
            deviceWidth: deviceWidth,
            deviceHeight: deviceHeight * 0.2,
            imageAssetPath: 'assets/singleton/withoutDart.png',
          ),
          ElevatedButton(
            child: Text('Go to Code Example'),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(SingletonImplementation.SCREEN_ROUTE);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
              minimumSize: MaterialStateProperty.all(
                Size(deviceWidth * 0.8, deviceHeight * 0.080),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
