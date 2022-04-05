import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  final numberString;
  const SecondScreen({Key? key, required this.numberString}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông tin"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(numberString),
        )
      ),
    );
  }
}
