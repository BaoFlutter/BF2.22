
import 'package:rxdart/rxdart.dart';

void main(List<String> arguments) {
  //demoBehaviourSubject();
  //demoPublishSubject();
  demoReplaySubject();
  
}

demoBehaviourSubject(){
  // Tạo ra 1 Stream
  // Hàm listen lấy hết các dữ liệu có trong Stream , dù thêm vào trước hay sau thời điểm lắng nghe
  BehaviorSubject<int>  behaviorSubject = BehaviorSubject<int>();
  behaviorSubject.listen((value) { 
    print("Lấy dữ liệu lần 1: $value");
  });
  behaviorSubject.add(101);
  behaviorSubject.add(102);
  behaviorSubject.listen((value) { 
    print("Lấy dữ liệu lần 2: $value");
  });
  behaviorSubject.add(201);
  behaviorSubject.add(202);
}

demoPublishSubject(){
  // Tạo ra 1 Stream
  // Hàm listen lấy hết các dữ liệu thêm vào sau thời điểm đặt listen 
  PublishSubject<int>  publishSubject = PublishSubject<int>();
  publishSubject.listen((value) { 
    print("Lấy dữ liệu lần 1: $value");
  });
  publishSubject.add(101);
  publishSubject.add(102);
  publishSubject.listen((value) { 
    print("Lấy dữ liệu lần 2: $value");
  });
  publishSubject.add(201);
  publishSubject.add(202);
}

demoReplaySubject(){
  // Tạo ra 1 Stream
  // Hàm listen lấy hết các dữ liệu thêm vào sau thời điểm đặt listen 
  ReplaySubject<int>  replaySubject = ReplaySubject<int>();
  replaySubject.listen((value) { 
    print("Lấy dữ liệu lần 1: $value");
  });
   replaySubject.add(101);
  replaySubject.add(102);
  replaySubject.listen((value) { 
    print("Lấy dữ liệu lần 2: $value");
  });
  replaySubject.add(201);
  replaySubject.add(202);
}
