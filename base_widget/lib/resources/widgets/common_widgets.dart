import 'package:flutter/material.dart';
Widget informationCard({ required String cardTitle,
  required String firstLable, required String firstContent,
  required String secondLabel, required String secondContent}){
  return Container(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: Card(
      child: Column(
        children: [
          Text(cardTitle, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
          const SizedBox(height: 10,),
          textAndTextWidget(lable: firstLable, text: firstContent),
          textAndTextWidget(lable: secondLabel, text: secondContent),
        ],
      ) ,
    ),
  );
}

Widget textAndTextWidget({required String lable, required String text}){
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