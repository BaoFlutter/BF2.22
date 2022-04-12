import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TextAndTextField extends StatelessWidget {
  final String lableText;
  final controller;
  final bool isNumber;
  final String hintText;
  final focusNode;
  const TextAndTextField({Key? key, required this.lableText, required this.controller, required this.isNumber, required this.hintText, required this.focusNode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          // Text
          Expanded(
            flex: 1,
            child: Text(lableText),
          ),
          // TextField
          Expanded(
            flex: 2,
            child: Container(
              child: TextField(
                controller: controller,
                keyboardType: isNumber? TextInputType.number : TextInputType.text,
                decoration: InputDecoration(
                  hintText: hintText
                ),
                focusNode: focusNode,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
