import 'package:api_lession/data_sources/api_services.dart';
import 'package:api_lession/models/video_model.dart';
import 'package:api_lession/view_models/video_list_provider.dart';
import 'package:api_lession/views/detail_video_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/strings.dart';
class VideoListScreen extends StatefulWidget {
  const VideoListScreen({Key? key}) : super(key: key);

  @override
  State<VideoListScreen> createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen> {
  Future<List<VideoModel>>? futureVideoList ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<VideoListProvider>(context, listen: false).getVideoList();
  }

  @override
  Widget build(BuildContext context) {
    final videoList = Provider.of<VideoListProvider>(context).videoList;
    return Scaffold(
      appBar: AppBar(
        title: Text(VIDEO_LIST),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: videoList.length!= 0 ? GridView.builder(
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
        ): Center(
          child: CircularProgressIndicator(),
        )
      ),
    );
  }

}
