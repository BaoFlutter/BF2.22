import 'package:api_lession/data_sources/api_urls.dart';
import 'package:api_lession/resources/strings.dart';
import 'package:api_lession/resources/utils/log.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as json;

import '../models/video.dart';

class ApiServices {
  // fetch Video List
  Future<List<Video>> fetchVideoList() async{
    List<Video> videoList = [];
    var videoListUrl = ApiUrl.VIDEO_URL;
    var response ;
    try{
      response = await http.get(videoListUrl);
    }
    catch(e)
    {
      print(ERROR_LOAD + ":" + e.toString());
    }
    var jsonBody = json.jsonDecode(response.body);
    Log().printJson(json: jsonBody);
    if(jsonBody['code']=="success") {
      List jsonList = jsonBody['list'];
      for (var jsonVideo in jsonList)
        {
          Video video = Video.fromJson(jsonVideo);
          videoList.add(video);
        }
    }
    return videoList;
  }


}