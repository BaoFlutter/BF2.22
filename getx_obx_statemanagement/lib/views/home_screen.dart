import 'package:api_lession/resources/strings.dart';
import 'package:api_lession/views/video_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'stored_video_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HOME_SCREEN),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  var route = MaterialPageRoute(builder: (context) => VideoListScreen());
                  Navigator.push(context, route);
                },
                child: Text(LOAD_VIDEO)),
            ElevatedButton(
                onPressed: (){
                  var route = MaterialPageRoute(builder: (context) => StoredVideoScreen());
                  Navigator.push(context, route);
                },
                child: Text('Show Stored videos')),
            ElevatedButton(
                onPressed: (){
                  //Get.snackbar("Thông báo", "Bạn đang dùng GetX");
                  const snackBar = SnackBar(
                    content: Text('Yay! A SnackBar!'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text('Show SnackBar'))
          ],
        ),
      ),


    );
  }

}
