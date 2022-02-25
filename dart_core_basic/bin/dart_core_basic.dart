import 'dart:io';

import 'package:dart_core_basic/dart_core_basic.dart' as dart_core_basic;
import 'package:test/scaffolding.dart';

int year = 2022 ; 
void main(List<String> arguments) {

  // Null Safety 
  //int tempNumber;
  // Trước đây : tempNumnber = null ; nhưng Dart SDK > 2.12 : không gán là null 
  int? tempNumber; 
  int a = tempNumber??3 + 1; 
  //a = tempNumber! + 5; 

  // Kiểu dữ liệu , biến
  int firstNumber = 10 ; 
  firstNumber = 20;
  int secondNumber; 
  // Kiểu dữ liệu 
  // Static: int, double, String, bool, List, Map, Set, Tuple, DateTime,  ... 
  // dynamic: var, dynamic
  String userName = "Báo Flutter";
  bool isLogined = true; 
  double mark = 8.5; 
  // biến hằng : Giá trị của biến đó không thể gán lại lần 2 
  const double PI = 3.14532 ;
  final int finalNumber = 30;
  final int secondFinalNumber = firstNumber;
  // In dữ liệu
  print("Những thứ bên trong đều là String");
  print("Số đầu tiên là: " + firstNumber.toString());
  print("Số PI là: $PI");
  // Sử dụng hàm
  int tong = tinhTong(10, 15);
  print("Tổng số là: $tong");
  print("Tổng 2 số là: ${tinhTong(10, 15)}");
  printName("Bao Flutter");
  int tich = tinhTichHaiSo(soThuNhat: 10, soThuHai: 15);
  print("Tích hai số là: $tich");
  // Biến cục bộ và biến toàn cục
  // Biến toàn cục: không được khởi tạo bên trong hàm
  // Biến cục bộ: là được khởi tạo bên trong hàm, chỉ sử dụng bên trong hàm đó thôi 

  // dynamic: var, dynamic
  var thirdNumber = 30; 
  //thirdNumber = "hello" ; // lỗi
  var age = "40 tuổi"; 

  dynamic forthNumber = 40; 
  forthNumber = "Hello";
  dynamic temp = true; 

  kiemTraChanLe(testingNumber: 8);

  // Toán tử gán 
  firstNumber += 20; // firstNumber = firstNumber + 20; ; /= , *=, %= 
  // i++; <=> i = i+1; i-- <=> i = i-1; 
  print("Số đầu tiên là: " + firstNumber.toString());
  // Toán tử so sánh: > ; <; ==; != ; <=, >= ; ||; &&
  //true : 1; false = 0;
  // || : (giá trị 1) ||( giá trị 2); <=> + 
  // true||true = true; true ||false = true; false || false = false;
  // && : (giá trị 1) && ( giá trị 2); <=> * 
  // true && true = true; true && false = false; false && false = false; 
  if((4>2)&&(3>5)) print("Biểu thức này là true ");
  else print("Biểu thức này là false ");

  List<int> numberList = [24, 3, 8, 9, 15, 27];
  //        length: 6 
  //        index:        0,  1, 2,  3, 4, 5 
  int phanTuThuNhat = numberList[0]; // 24
  inSoChiaHetCho3(numberList: numberList);

  // Map 
  // Tập hợp các cặp dữ liệu : key --- value 
  Map<String, dynamic> information = {
    "name": "Bao Flutter", // cặp 1. key : value
    "age": 30,// cặp 2: key :value
  };
  Map map = {
    "name": "BF",// dynamic : dynamic
    1 : "1991",
    true : 56,

  };

  print(information['age'].toString());
} 
// Hàm : thực thi một chức năng nhiệm vụ nào đó 
// kiểu dữ liệu + tên hàm+ ([biến 1, biến 2, biến 3 ]){ ... }

// Quy tắc viết hàm: Nên sử dụng biến cục bộ, hạn chế sử dụng biến toàn cục 
//1. Tạo hàm, riêng biệt với hàm khác 

void inSoChiaHetCho3({required List<int> numberList}){
  /*
  // for 
  for (int i = 0 ; i< numberList.length; i++)
  {
    if(numberList[i]%3 == 0 ) print("Số ${numberList[i]} chia hết cho 3");
  }
  
  // for ... in 
  for(int number in numberList){
    if(number%3 == 0 ) print("$number chia hết cho 3");
  }
 

  // while 
  int count = 0 ; 
  while (count < numberList.length)
  {
    if(numberList[count]%3 == 0 ) print("Số ${numberList[count]} chia hết cho 3");
    count++;
  }

   */
  // do... while 
  int count = 0 ; 
  do
  {
    if(numberList[count]%3 == 0 ) print("Số ${numberList[count]} chia hết cho 3");
    count++;
  } while (count < numberList.length);

}
tinhTong(soHang1, soHang2){
  int sum = soHang1 + soHang2; 
  return sum;
  //return soHang1 + soHang2; 
}

void printName(String name)
{
  print(name);
  return;
}
/*
int tinhTichHaiSo({ required int soThuNhat, required int soThuHai })
{
  return soThuNhat*soThuHai;
}
*/

int tinhTichHaiSo({ required int soThuNhat, required int soThuHai }) => soThuNhat*soThuHai;
// => giaTri : { return giaTri; }

// Khi dynamic được đặt làm kiểu dữ liệu đầu ra của hàm, hoặc kiểu dữ liệu biến truyền vào 
// thì có thể dynamic đi 

void kiemTraChanLe({required int testingNumber})
{
  if(testingNumber%2 == 0) 
  print("Số $testingNumber là số chẵn");
  else print("Số $testingNumber là số lẻ");
}

void kiemTraChanLeDungSwitchCase({required int testingNumber})
{
  int soDu= testingNumber%2;
  switch(soDu){
    case 0: 
    print("Số $testingNumber là số chẵn");
    break;

    case 1: 
    print("Số $testingNumber là số lẻ");
    break;

    default: 
    print("Số đó không hợp lệ");
    break;
  }
}
