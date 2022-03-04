

void main(List<String> arguments) async {
  print("Chương trình bắt đầu");
  var tempNumber = await makeLateNumber();
  // Kiểu dữ liệu của đầu ra : makeLateNumber là : Future<int>
  // 
  print("Số lấy về được lần 1 với await : $tempNumber");
  Future<int> futureNumber = makeLateNumber();
  // Với then dùng sau dữ liệu dạng Future, không cần async 
  futureNumber.then((finalNumber){
    print("Số lấy về được lần 2 với then : $finalNumber");
  });
  print("Chương trình kết thúc");
  /*
  // Cách 1 dùng listen 
  numberStream.listen((number) {
    print("Số lấy từ Stream là $number");
   });
   */
  //getNumberFromStream(numberStream);
  Stream<int> secondNumberStream = makeNumberStream(maxNumber: 9);
  getNumberFromStream(secondNumberStream);

}
// Đổi dữ dữ liệu : Future sang Static :   number = await futureNumber;

Future<int> makeLateNumber(){
  return Future.delayed(Duration(seconds: 2), (){
    return 5;
  });
}

// Stream 
// Tạo 1 Stream số , sau 2 giây đẩy lên 1 số 
Stream<int> numberStream = Stream<int>.periodic(Duration(seconds: 2), makeNumberUp);
int makeNumberUp(int value )=> value +1;

// Cách 2 tạo Stream 
Stream<int> makeNumberStream({required int maxNumber})async*{

  for(int i= 1; i<= maxNumber ; i++)
  {
    yield i;
  }

}

// Cách 2 đọc dữ liệu từ Stream 
void getNumberFromStream(Stream<int> numberStream)async {
  await for(int number in numberStream )
  {
    print("Dữ liệu lấy từ stream là: $number");

  }

}