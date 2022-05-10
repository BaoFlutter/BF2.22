import 'package:api_lession/models/video.dart';
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
