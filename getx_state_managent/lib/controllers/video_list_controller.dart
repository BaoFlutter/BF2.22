import 'package:api_lession/models/video_model.dart';
import 'package:get/get.dart';

class VideoListController extends GetxController{
  List<VideoModel> videoList = [];

  updateVideoListOnController({required List<VideoModel> videoList}){
    this.videoList = videoList;
    update();
  }

}