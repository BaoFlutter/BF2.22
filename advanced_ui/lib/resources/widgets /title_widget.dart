import 'package:flutter/material.dart';
class TitleWidget  extends StatelessWidget {
  final String name;
  final String address;
  final starNumber;
  const TitleWidget ({Key? key, required this.name, required this.address, required this.starNumber}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only( top: 30, left: 40 , right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // text
          Expanded(
            flex: 5,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),
                    Text(address, style: TextStyle(color: Colors.black45),)
                  ],
                ),
              ),),
          // start + number
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.star, color: Colors.red,),
                  Text(starNumber)
                ],
              ),
            ),),
        ],
      ),
    );
  }
}
