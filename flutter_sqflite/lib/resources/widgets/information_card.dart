import 'package:flutter/material.dart';

import 'text_and_text_widget.dart';
class InformationCard extends StatelessWidget {
  final String cardTitle;
  final String firstLable;
  final String firstContent;
  final String secondLabel;
  final String secondContent;

  const InformationCard({Key? key, required this.cardTitle, required this.firstLable, required this.firstContent, required this.secondLabel, required this.secondContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Card(
        child: Column(
          children: [
            Text(cardTitle, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
            const SizedBox(height: 10,),
            TextAndTextWidget(lable: firstLable, text: firstContent),
            TextAndTextWidget(lable: secondLabel, text: secondContent),
          ],
        ) ,
      ),
    );
  }
}
