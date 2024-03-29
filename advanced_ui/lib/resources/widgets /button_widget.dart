import 'package:flutter/material.dart';
class ButtonWidget extends StatelessWidget {
  final onPressed;
  final iconData;
  final String buttonText;
  final buttonColor;

  const ButtonWidget({Key? key, required this.onPressed, required this.iconData, required this.buttonText, required this.buttonColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Column(
          children: [
            Icon(iconData, color: buttonColor,),
            const SizedBox(height: 10,),
            Text(buttonText.toUpperCase(), style: TextStyle(color: buttonColor, fontWeight: FontWeight.bold),)
          ],
        ),
      ),

    );
  }
}
