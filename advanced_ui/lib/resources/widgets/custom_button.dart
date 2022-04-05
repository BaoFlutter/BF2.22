import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final iconWidget;
  final String textButton;
  final onPress;
  const CustomButton({Key? key, required this.iconWidget, required this.textButton, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          children: [
            iconWidget,
            const SizedBox(height: 5,),
            Text(textButton.toUpperCase(), style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
      onTap: onPress,
    );
  }
}
