import 'package:api_lession/models/video_model.dart';
import 'package:api_lession/providers/video_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/strings.dart';
import 'detail_video_screen.dart';
class StoredVideoScreen extends StatelessWidget {
  const StoredVideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final videoListProvider = Provider.of<VideoListProvider>(context);
    List<VideoModel> videoList = videoListProvider.videoList;
    //List<VideoModel> videoList = context.watch<VideoListProvider>().videoList;
    return Scaffold(
      appBar: AppBar(
        title: Text(VIDEO_LIST),
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
              VideoModel videoModel = videoList[index];
              return GestureDetector(
                  onTap: (){
                    var route = MaterialPageRoute(builder: (context)=> DetailVideoScreen(videoModel: videoModel));
                    Navigator.push(context, route);
                  },
                  child: Card(
                      color: Colors.amber,
                      child: Column(
                        children: [
                          Image.network(videoModel.url_photo!),
                          Text(videoModel.title!)
                        ],
                      )
                  )
              );
            }
        )
      ),
    );
  }
}
