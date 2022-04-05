import 'package:rxdart/subjects.dart';

import '../data_sources/repository.dart';
import '../models/video_model.dart';

class VideoListBloc {
  final _repository = Repository();
  // Tạo 1 subject
  final videoListSubject = PublishSubject<List<VideoModel>>();
  // Đẩy data vào bloc
  pushDataIntoBloc() async {
    List<VideoModel> videoList = await _repository.fetchAllVideos();
    videoListSubject.sink.add(videoList);
  }

  // Return data stream
  Stream<List<VideoModel>> get videoListStream => videoListSubject.stream;

  dispose(){
    videoListSubject.close();
  }









}