import 'package:api_lession/controllers/video_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/video.dart';
import 'package:provider/provider.dart';

import 'video_detail.dart';
class SecondVideoListScreen extends StatelessWidget {
  const SecondVideoListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final VideoListController videoListController = Get.find();
    final videoList = videoListController.videoObsList.value;
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Video List"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: videoList.length,
            itemBuilder: (BuildContext context, int index) {
              Video video = videoList[index];
              return GestureDetector(
                onTap: (){
                  var route = MaterialPageRoute(builder:(context) => VideoDetail(video: video) );
                  Navigator.push(context, route);
                },
                child: Card(
                    color: Colors.amber,
                    child: Column(
                      children: [
                        Image.network(video.url_photo!),
                        Text(video.title!)
                      ],
                    )
                ),
              );
            }
        )
      ),
    );
  }
}
