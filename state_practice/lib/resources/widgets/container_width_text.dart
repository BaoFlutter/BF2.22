import 'package:flutter/material.dart';
class ContainerWithText extends StatelessWidget {
  final String text;
  final Color boxColor;
  final Color textColor;
  final bool textInCenter;
  const ContainerWithText({Key? key, required this.text, required this.textColor, required this.textInCenter, required this.boxColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      color: boxColor,
      child: textInCenter ? Center(child: Text(text, style: TextStyle(color: textColor),)) : Text(text, style: TextStyle(color: textColor),),
    );
  }
}
