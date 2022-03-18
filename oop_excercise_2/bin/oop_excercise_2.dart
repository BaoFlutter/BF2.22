import 'package:oop_excercise_2/oop_excercise_2.dart' as oop_excercise_2;

import 'person/person.dart';

void main(List<String> arguments) {
  Person tai = Person(id: "01", name: "taidoan");
  tai.setBirthYear(2000);
  tai.getInfor();
  tai.getAge();
  print("tuoi la : ${tai.getAge()}");

  Person thai = Person(id: "01", name: "thái");
  thai.setBirthYear(2000);
  thai.getInfor();
  int tuoi = thai.getAge();
  print("Số tuổi là: $tuoi");
  
}


/*
1. Tạo hàm 
VD: 
int getAge(int age){
  return age;
}
Phải được tách riêng so với hàm ( tạo hàm khác)
Không được đặt bên trong bất cứ hàm nào 

2. Sử dụng hàm 
VD : int age = getAge( 30 );

+ Có thể đặt trong hàm khác 

*/
