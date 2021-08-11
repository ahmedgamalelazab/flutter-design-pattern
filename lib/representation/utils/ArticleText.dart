import 'package:flutter/material.dart';

class ArticleText extends StatelessWidget {
  final String? contentText;
  final TextStyle? textStyle;
  final bool supportJustifying;
  ArticleText({
    Key? key,
    this.contentText,
    this.textStyle,
    required this.supportJustifying,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text(
          contentText ?? "",
          textAlign:
              supportJustifying == false ? TextAlign.left : TextAlign.justify,
          style: textStyle,
        ),
      ),
    );
  }
}
