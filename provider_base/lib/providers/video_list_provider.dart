import 'package:api_lession/models/video.dart';
import 'package:flutter/material.dart';

class VideoListProvider with ChangeNotifier{

  List<Video> videoListOnProvider = [];

  updateVideoListOnProvider({required List<Video> videoList}){
    this.videoListOnProvider = videoList;
    notifyListeners();
  }


}