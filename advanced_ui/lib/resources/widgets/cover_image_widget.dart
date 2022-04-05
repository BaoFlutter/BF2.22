import 'package:flutter/material.dart';
class CoverImageWidget extends StatelessWidget {
  final String imageUrl;
  const CoverImageWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        imageUrl,
      height: MediaQuery.of(context).size.height/2.5,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover
    );
  }
}
