
import 'dart:isolate';

import 'package:dart_core_cau_truc_trong_ham/dart_core_cau_truc_trong_ham.dart' as dart_core_cau_truc_trong_ham;

void main(List<String> arguments) {
  // If else 
  /*
  if(bieu_thuc_boolean_true_false_1) {
    .....Khối lệnh nếu biểu thức kia đúng
  } else if (bieu_thuc_boolean_true_false_2)
  {
    .....Khối lệnh nếu biểu thức: bieu_thuc_boolean_true_false_2 kia đúng
  }
  ......
  else {
    ... Khối lệnh
  }
   
  */

  bool graduated = true; 
  if(graduated) 
  print("Bạn đã tốt nghiệp");
  else print("Bạn chưa tốt nghiệp");

  int number = 10 ;
  if(isEvenNumber(number)) print("$number là số chẵn");
  else print("$number là số lẻ");

  int firstNumber= 9 ; 
  int secondNumber = 10 ; 
  int thirdNumber = -20;
  print("Số lớn nhất là : ${findMaxNumber(firstNumber,secondNumber, thirdNumber )}");
  print("Số nhỏ nhất là : ${findMinNumber(firstNumber,secondNumber, thirdNumber )}");
  // Toán tử gán 
  // +=; := ; -=; /= ; %= ; i++; i--; 
  number += 2 ; // number = number + 2; // 12 
  number ++; // number = number + 1; 
  number --; // number = number - 1; 
  // Toán tử so sánh 
  // Kết quả : true, false
  print(findEqualNumbers(firstNumber, secondNumber));
  // Toán tử so sánh : &&, || - 2 giá trị bool với nhau để tạo các điều kiện 
  // && <=> * : false && true = false , false : 0 ; true: 1 ; 
  // false && true = 0 * 1 = 0;
  if((firstNumber >= secondNumber) && (firstNumber >= thirdNumber)) print ("$firstNumber là số lớn nhất");
  else print("$firstNumber chưa phải là số lớn nhất");
  // || <=> +  : false || true =  false , false : 0 ; true: 1 ; 
  // false || true = 0 + 1 = 1; false || false = 0 + 0 = 0 -> false; true || true = 1 + 1 = 1 ;
  if((firstNumber >= secondNumber) || (firstNumber >= thirdNumber)) print ("$firstNumber là số không phải là số bé nhât");
  else print("$firstNumber là số nhỏ nhất");

  kiemTraChanLe(number);

  // Vòng lặp For 
  for (int i = 1; i<= 12 ; i++ )
  {
    if(i%5 == 0 ) print("$i chia hết cho 5 trong khoảng 1 - 12");
    // break; Kết thúc vòng lặp
    // continue : Tiếp tục vòng lặp mới đi
   // return ; Kết thúc hàm này đi; 
  }

  printOddNumbers(1, 10);
  printEvenAndDivisible3(1, 1000);

  // While 
  //while (bieu_thuc_bool_tru_false)
  // {.... }
  // do ....while (bieu_thuc_bool_tru_false)
  // do{.... }while (bieu_thuc_bool_tru_false)

  // Array <=> List
  // List là một tập hợp các phần tử có cùng kiểu dữ liệu 
  List<String> stringList= ['ab', 'c', 'd', 'hello'];
  List<int> numberList = [2, 6, 8, 3, 1 , 15];
  // Chỉ số của List :    0, 1, 2, 3, 4,  5
  // Độ dài của List:   6

  findEvenNumberInList(numberList);

}

void findEvenNumberInList(List<int> numberList){
  /*
  // for 
  for (int i = 0 ; i< numberList.length; i++)
  {
    if(numberList[i]%2 == 0 ) print("${numberList[i]} là số chẵn trong list");
  }
  */

  /*
  // for ... in 
  for(int number in numberList )
  {
    if(number%2 ==0) print("$number là số chẵn trong list");
  }
  */
  /*
  // While
  int index = 0 ; 
  while(index < numberList.length){
    if(numberList[index]%2 == 0 ) print("${numberList[index]} là số chẵn trong list");
    index++;
  }
  */

  // do ... While 
  int index = 0 ; 
  do {
    if(numberList[index]%2 == 0 ) print("${numberList[index]} là số chẵn trong list");
    index++;
  }while(index < numberList.length);
  

}

bool isEvenNumber(int number)
{
  if(number%2 == 0) return true; 
 return false;  
}

// Tạo 1 hàm thực hiện chức năng: Kiểm tra một số chia hêt cho 3 hay không 

int findMaxNumber(int firstNumber, int secondNumber, int thirdNumber ){
  int maxNumber = firstNumber ; 
  if(secondNumber >= maxNumber ) 
  maxNumber = secondNumber;
  if(thirdNumber >= maxNumber) 
  maxNumber = thirdNumber;
  return maxNumber;
}

int findMinNumber(int firstNumber, int secondNumber, int thirdNumber ){
  int minNumber = firstNumber ; 
  if(secondNumber <=  minNumber ) 
  minNumber = secondNumber;
  if(thirdNumber <= minNumber) 
  minNumber = thirdNumber;
  return minNumber;
}

String findEqualNumbers(int firstNumber, int secondNumber)
{
  if(firstNumber==secondNumber) return "Hai số $firstNumber và $secondNumber bằng nhau";
  else if(firstNumber!=secondNumber) return "Hai số $firstNumber và $secondNumber khác nhau";
  return "Số không hợp lệ";
}

void kiemTraChanLe(int number)
{
  switch(number%2)
  {
    case 0:
    print("$number là số chẵn");
    break; 

    case 1:
    print("$number là số lẻ");
    break; 

    default:
    print("Số không hợp lệ");
    break; 
  }
  
  print("Cấu trúc kết thúc");
}

void printOddNumbers(int fromNumber, int toNumber)
{
for(int number = fromNumber; number <= toNumber; number++ )
{
  if(number%2 != 0) print("$number là số lẻ");
}
}

void printEvenAndDivisible3(int fromNumber, int toNumber){
  int evenCount = 0; 
  int divisible3Count = 0; 
  for (int number = fromNumber; number<= toNumber; number++)
  {
    if(number%2 == 0 ) {
      evenCount ++;
    }
    if(number%3 == 0 ){
      divisible3Count++;
    }
  }

  print("Từ $fromNumber đến $toNumber có $evenCount số chẵn và có $divisible3Count số chia hết cho 3 ");

}

