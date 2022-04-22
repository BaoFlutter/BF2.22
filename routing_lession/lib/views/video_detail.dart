import 'package:api_lession/models/video.dart';
import 'package:api_lession/views/second_video_detail.dart';
import 'package:api_lession/views/video_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
class VideoDetail extends StatelessWidget {
  final Video video;
  const VideoDetail({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(video.title!),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          ElevatedButton(
              onPressed: (){
                var route = MaterialPageRoute(builder: (context)=> SecondVideoDetail(video: video));
                Navigator.push(context, route);
              },
              child: Text("Màn 2"))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Image.network(video.url_photo!),
            Html(data: video.description!)
          ],
        ),

      ),

    );
  }
}
