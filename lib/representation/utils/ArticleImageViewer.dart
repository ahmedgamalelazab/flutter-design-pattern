import 'package:flutter/material.dart';

class ArticleImageViewer extends StatelessWidget {
  const ArticleImageViewer({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.imageAssetPath,
    required this.boxFit,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;
  final String imageAssetPath;
  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: deviceWidth,
        height: deviceHeight,
        // color: Colors.black,
        child: Image.asset(imageAssetPath, fit: boxFit),
      ),
    );
  }
}
