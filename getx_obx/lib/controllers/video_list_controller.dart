import 'package:get/get.dart';
import '../models/video.dart';

class VideoListController extends GetxController{

  // Obx : Observer + RxDart

  // Kiểu dữ liệu : Obs
  // Obs - dữ liệu thuần ( int , string, list , Objs ... )
  // Chuyển đổi :  obs -> thuần :  var a_obs ; => a = a_obs.value;
  // Chuyển đổi : thuần -> obs : int a => var a_obs = a.obs
  var videoObsList = [].obs;

  updateVideoListOnController({ required List<Video> videoList}){
    this.videoObsList = videoList.obs;
    update();
  }


}