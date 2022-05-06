import 'package:api_lession/views/second_video_list_screen.dart';
import 'package:api_lession/views/video_list_screen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Màn hình chính"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  var route = MaterialPageRoute(builder: (context)=> VideoListScreen());
                  Navigator.push(context, route);
                },
                child: Text("Load Video List")),

            ElevatedButton(
                onPressed: (){
                  var route = MaterialPageRoute(builder: (context)=> SecondVideoListScreen());
                  Navigator.push(context, route);
                },
                child: Text("Show Video List")),
          ],
        ),
      ),
    );
  }
}
