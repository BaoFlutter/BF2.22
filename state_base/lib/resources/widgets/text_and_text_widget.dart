import 'package:flutter/material.dart';
class TextAndTextWidget extends StatelessWidget {
  final String lable;
  final String text;
  const TextAndTextWidget({Key? key, required this.lable, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
      child: Row(
        children: [
          Text(lable, style: TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(width: 5,),
          Text(text)
        ],
      ),
    );
  }
}
