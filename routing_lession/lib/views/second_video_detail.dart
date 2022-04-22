import 'package:api_lession/models/video.dart';
import 'package:api_lession/views/third_video_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
class SecondVideoDetail extends StatelessWidget {
  final Video video;
  const SecondVideoDetail({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Video Detail"),
        centerTitle: true,
        actions: [
         ElevatedButton(
              onPressed: (){
                var route = MaterialPageRoute(builder: (context)=> ThirdVideoDetail(video: video));
                Navigator.pushAndRemoveUntil(context,route, (route) => false);
              },
              child: Text("Màn 3"))
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
