import 'package:api_lession/models/video_model.dart';
import 'package:api_lession/resources/strings.dart';
import 'package:flutter/material.dart';

import 'video_list_screen.dart';
class DetailVideoScreen extends StatefulWidget {
  final VideoModel videoModel;
  const DetailVideoScreen({Key? key, required this.videoModel}) : super(key: key);

  @override
  State<DetailVideoScreen> createState() => _DetailVideoScreenState();
}

class _DetailVideoScreenState extends State<DetailVideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DETAIL_VIDEO),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
        child: Card(
            color: Colors.amber,
            child: Column(
              children: [
                Image.network(widget.videoModel.url_photo!),
                Text(widget.videoModel.title!)
              ],
            )
        )
      ),
    );
  }
}
