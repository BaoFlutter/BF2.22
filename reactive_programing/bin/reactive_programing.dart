import 'package:reactive_programing/reactive_programing.dart' as reactive_programing;
import 'package:rxdart/rxdart.dart';

void main(List<String> arguments) {
//demoBehaviourSubject();
//demoPublishSubject();
demoReplaySubject();

}

// BehaviorSubject : chỉ lấy giá trị thêm vào sau này và 1 giá trị gần nhất được thêm vào trước đó
demoBehaviourSubject(){
// Tạo ra 1 Stream kiểu int  
BehaviorSubject<int> behaviorSubject = BehaviorSubject<int>();
behaviorSubject.listen((value){
  print("Lấy dữ liệu lần 1: $value");
});
behaviorSubject.add(101);
behaviorSubject.add(102);
behaviorSubject.listen((value){
  print("Lấy dữ liệu lần 2: $value");
});
behaviorSubject.add(201);
behaviorSubject.add(202);
}

// Publish Subject: Chỉ lấy giá trị thêm vào sau lệnh lắng nghe 
demoPublishSubject(){
// Tạo ra 1 Stream kiểu int  
PublishSubject<int> publishSubject = PublishSubject<int>();
publishSubject.listen((value){
  print("Lấy dữ liệu lần 1: $value");
});
publishSubject.add(101);
publishSubject.add(102);
publishSubject.listen((value){
  print("Lấy dữ liệu lần 2: $value");
});
publishSubject.add(201);
publishSubject.add(202);
}
// Replay Subject : Có bao nhiêu trong Stream thì lấy ra hết 
demoReplaySubject(){
// Tạo ra 1 Stream kiểu int  
ReplaySubject<int> replaySubject = ReplaySubject<int>();
replaySubject.listen((value){
  print("Lấy dữ liệu lần 1: $value");
});
replaySubject.add(101);
replaySubject.add(102);
replaySubject.listen((value){
  print("Lấy dữ liệu lần 2: $value");
});
replaySubject.add(201);
replaySubject.add(202);
}
