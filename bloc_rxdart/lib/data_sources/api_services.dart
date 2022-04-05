import 'package:api_lession/data_sources/api_urls.dart';

import '../models/video_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as json;
import '../resources/strings.dart';

class ApiServices {

  Future<List<VideoModel>> fetchVideoList() async {
    List<VideoModel> videoList = [];
    var videoListUri = ApiUrl.VIDEO_URL;
    var response ;
    try {
      response =  await http.get(videoListUri);
    }
    catch(e)
    {
      print(ERROR_LOAD + e.toString());
    }
    var jsonBody = json.jsonDecode(response.body);
    if(jsonBody['code']=='success'){
      List jsonList = jsonBody['list'];
      for(var jsonVideo in jsonList)
        {
          VideoModel videoModel = VideoModel.fromJson(jsonVideo);
          videoList.add(videoModel);
        }
    }
    return videoList;
  }



}