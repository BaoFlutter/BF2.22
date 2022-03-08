import 'package:dart_core/dart_core.dart' as dart_core;

void main(List<String> arguments) {
 // Kiểu dữ liệu - static : double, int, string, boolean, List, Map, DateTime, ....
 // Kiểu dữ liệu - dynamic : var, dynamic
 //
 int age = 30; 

 var number = 20; 
 // number = "hello"; // error
 number = 30;
 var name = "Bao Flutter";
 name = "Bao" ;

 dynamic isLogin = true; 
 dynamic fNumber = 30; 
 fNumber = "aaa";
 fNumber = 8.5;
 dynamic address = "VietNam";

int sum =  tinhTong(firstNumber: 5, secondNumber:10);
print("$sum");

int hieu =  tinhHieu(firstNumber: 10, secondNumber:4);
print("$hieu");

int giaiThua = tinhGiaiThua(number: 3);
print("Giai thua là : $giaiThua");

// NullSafety 
// 

int? number2 ;  // binh thuong Dart SDK < 2.12 : number2  = null ; tuy nhiên ( >2.12 ) : number2 = null khi thêm dấu hỏi sau kiểu dữ liệu
print("$number2");
//number = number2! + 2;
number = number2??0 + 2;
print("$number");

List<String> stringList = ["xin chào", "hello", "bongjur"];
List list = [1, true, "hello", 8.5] ; // List kiểu dữ liệu dynamic
List<int> numberList =  [4,3,10,9,15,7,6,5,8];
printTongCacSoChiaHetCho3(numberList: numberList);

// Map : là một tập hợp các cặp kiểu dữ liệu : key - value 
Map<String, dynamic>  infor = {
  "name" : "Bao Flutter",
  "age"  : 30,
  "isMale": true,
};
// infor[key] = value; 
print("Tên là : ${infor["name"]}");
 
 Map json = {
   "country" : "VietNam",
   1 : 3000, 
   "isMale": true
 };
 List<int> numberList2 =  [4,3,10,9,15,7,6,5,8];
 List<int> oddNumberList = getListOfOddNumber(numberList: numberList2);
 print(oddNumberList.toString());


}

int tinhTong({ required int firstNumber, required int secondNumber ,int? thirdNumber})
{
  return firstNumber + secondNumber;
}
// Nếu kiểu dữ liệu đầu ra và kiểu dữ liệu truyền vào là dynamic , thì có thể bỏ đi và trình duyệt hiểu là dynamic 
tinhHieu({ required firstNumber, required secondNumber , thirdNumber})
{
  return firstNumber - secondNumber;
}
// Khuyến cáo : Khi biết chính xác kiểu dữ liệu Static thì nên điền vào


int tinhTich({ required int firstNumber, required int secondNumber})
=> firstNumber * secondNumber;

// { return sthg; } <=>  => sthg;


int tinhGiaiThua({ int? number}){
  int giaiThua = 1; 
  int count = number!;

  while(count > 0)
  {
    giaiThua = giaiThua * count;
    count --;
  }

  return giaiThua;

}

void printTongCacSoChiaHetCho3({ required List<int> numberList}){
  
  int sum = 0 ; 
  for(int number in numberList)
  {
    if(number%3 == 0) {
      sum += number;
      print("$number là số chia hết cho 3");
    }
  }
  print("Tổng các số chia hết cho 3 là: $sum");

}


List<int> getListOfOddNumber({required List<int> numberList}){
  
  List<int> oddList = [];
  for(int number in numberList)
  {
    if(number%2 !=0) {
      oddList.add(number);
    }
  }

  return oddList;

}