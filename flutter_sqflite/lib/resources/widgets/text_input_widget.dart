import 'package:flutter/material.dart';
class TextInputWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool  isOnlyNumber;
  final controller;

  const TextInputWidget({Key? key, required this.labelText, required this.hintText, required this.isOnlyNumber, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: labelText,
            hintText: hintText,
          ),
          keyboardType: isOnlyNumber ? TextInputType.number : TextInputType.text,
          controller: controller,
        )
    );
  }
}
