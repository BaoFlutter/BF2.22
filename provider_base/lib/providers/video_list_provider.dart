import 'package:api_lession/models/video_model.dart';
import 'package:flutter/material.dart';

class VideoListProvider with ChangeNotifier{

  List<VideoModel> videoList = [];
  updateVideoListOnProvider({required List<VideoModel> videoList})
  {
    this.videoList = videoList;
    notifyListeners();
  }


}
