import 'package:api_lession/data_sources/api_services.dart';
import 'package:api_lession/models/video_model.dart';
import 'package:api_lession/views/detail_video_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    loadVideos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(VIDEO_LIST),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
           // Navigator.pop(context);
            Get.back();
          },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder<List<VideoModel>>(
          future: futureVideoList,
          builder: (context, snapshot){
            if(snapshot.hasError) return Center(
              child: Text(ERROR_LOAD),
            );
            if(!snapshot.hasData) return Center(
              child: CircularProgressIndicator(),
            );
            List<VideoModel> videoList = snapshot.data! ;
            return GridView.builder(
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
            );
          },

        ),
      ),
    );
  }

  loadVideos(){
    futureVideoList = ApiServices().fetchVideoList();
  }



}