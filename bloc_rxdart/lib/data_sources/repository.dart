import 'package:api_lession/data_sources/api_services.dart';

import '../models/video_model.dart';

class Repository {
  final ApiServices _apiServices = ApiServices();
  // Get VideoList
  Future<List<VideoModel>> fetchAllVideos() => _apiServices.fetchVideoList();


}