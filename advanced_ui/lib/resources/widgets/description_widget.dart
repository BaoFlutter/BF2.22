import 'package:flutter/material.dart';
class DescriptionWidget extends StatelessWidget {
  final text;
  const DescriptionWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
      child: Text(text, softWrap: true,),
    );
  }
}
