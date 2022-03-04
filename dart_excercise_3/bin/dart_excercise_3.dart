

import 'package:dart_excercise_3/limit_sum.dart';
import 'package:dart_excercise_3/list_functions.dart';

void main(List<String> arguments) {
  
  print("${checkEvenNumberAndLarger15(2)}");
  print("AAAA");

  // showNumbersGotSumSmaller30(1, 50, 30);
  showNumbersAndSumGotSumSmaller30(1, 50, 30);
  List<int> numberList = [2,8,4,3,15,8,50];
  printIndexsOfEvenNumber(numberList);

  //List<int> sortedList = sapXepDaySo(numberList);
  List<int> sortedList = numberList..sort();
  print(sortedList.toString());
  print("Số nhỏ nhất: ${sortedList[0]} và số lớn nhất là: ${sortedList[sortedList.length -1]}");
  // 
  List<String> strList = ["tôi", "hello", "tôi là coder", "think"];
  printElementIncludingSmth(strList, "tôi");
}

// Thái 
bool checkEvenNumberAndLarger15(int inputNumber){
  if ((inputNumber % 2 == 0)&&(inputNumber > 15)) return true;
  return false;
}

// Tài 
bool timSoChanVaLonHon15(int inputNumber) {
  if (inputNumber % 2 == 0 && inputNumber > 15) return true;
  return false;
}

void timSoChiaHetChoBa(List<int> numberList) {
  for (int number in numberList) {
    if (number % 3 == 0) print("$number La So Chia Het Cho 3 Trong List");
  }
}

