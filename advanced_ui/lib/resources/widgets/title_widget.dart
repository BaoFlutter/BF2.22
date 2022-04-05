import 'package:flutter/material.dart';
class TitleWidget extends StatelessWidget {
  final String name;
  final String address;
  final int rate;
  const TitleWidget({Key? key, required this.name,required this.address, required this.rate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
      child: Row(
        children: [
          Expanded(
            flex:5,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),
                    Text(address, style: TextStyle(color: Colors.black38),)
                  ],
                ),
              ),),
          Expanded(
            flex: 1,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.red,),
                    Text(rate.toString())
                  ],
                ),
              ),),

          // title

          // star + rate

        ],
      ),
    );
  }
}
