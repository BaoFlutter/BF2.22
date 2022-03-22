import 'package:async_programing/async_programing.dart' as async_programing;

void main(List<String> arguments) async {
  Future<int> number =  makeLateNumber(); 
  /*
  Cách 1: async - await 
  int resultNumber = await number; // Future => Dạng Tĩnh : đặt await vào trước dữ liệu dangj Future đó 
  print("Số lấy được: $resultNumber");
  print("Chương trình kết thúc");
  */
  //Cách 2: Dùng then : Dữ liệu dạng Future . then
  number.then((number) {
    print("Số trên là : $number");
  });
   print("Chương trình kết thúc");
  Stream<int> numberFromStream = makeNumberStream(5);
  // printNumberInStream(numberStream);
  getNumberFromStream(numberFromStream);
}
// 1. Tạo Stream
Stream <int> numberStream = Stream<int>.periodic(Duration(seconds: 2), makeNumberUp);

// 2. Tạo Stream dùng async * 
Stream<int> makeNumberStream(int maxNumber)  async* {
  for (int i = 1; i<= maxNumber; i++)
  {
    yield i; 
  }
}



int makeNumberUp(int value) => value + 1; 

Future<int> makeLateNumber(){
  return Future.delayed(Duration(seconds: 2), (){
    return 9;
  });
}
// Cách 1 lấy dữ liệu từ Stream 
void printNumberInStream(Stream<int> numberStream){
  numberStream.listen((number) {
    print("Số lấy từ Stream: $number");
   });
}
// Cách 2 lấy dữ liệu từ Stream 
void getNumberFromStream(Stream<int> numberStream) async {
  await for(var number in numberStream)
  {
    print("Số lấy từ Stream: $number");
  }

}