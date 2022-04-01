import 'package:get/get.dart';

import '../models/video_model.dart';

class VideoListObxController extends GetxController {
  // Obx : Observer + RxDart
  // Convert :
  // Static ( int, double, bool, User ...  - Obs
  // 1. Static => obs
  //   Obs      = static value . "obs"
  // 2. obs => static
  //   static_var =   obs_variable.value =

  var videoListObs = [].obs ;
  //   Obs      = static value . "obs"
  updateVideoListOnObxController({required List<VideoModel> videoList}){
    this.videoListObs = videoList.obs;
  }

}