import 'package:oop_dart_core/oop_dart_core.dart' as oop_dart_core;

import 'cars/xe_tai.dart';
import 'hinh/hinh_vuong.dart';
import 'user.dart';

void main(List<String> arguments) {
  User bao = User(userName: "Pham Van Bao", address: "Ha Noi", birthYear: 1991) ; // Tạo 1 instance, tạo 1 đối tương
  User hoa = User(userName: "Le Thi Hoa", address:"Sai Gon", birthYear: 1995);
  User mai = User(userName: "Nguyen Thi Mai", address:"Da Nang", birthYear: 1985);
  double piNumber = User.PI ; // chỉ cần điền tên class mà không cần tạo đối tượng 
  int number = 10;

  bao.setPhoneNumber(phoneNumber: "0349582808");
  bao.getPhoneNumber();
  print("Số điện thoại : ${bao.getPhoneNumber()}");

  print(hoa.userName);
  print(hoa.getAge()) ;
  // Có 3 người dùng, hãy in ra tên người lớn tuôi nhat va so tuoi cua ho 
   List<User> userList = [];
  userList.add(bao);
  userList.add(hoa);
  userList.add(mai);
  User oldestUser = getOldestNameAndAge(userList: userList);
  print("Người lớn tuổi nhất là : ${oldestUser.userName},  có tuổi là:${oldestUser.getAge()} ");
// Kế thừa
// Đối tượng con có thể sở hữu bất cứ gì public của class cha
 XeTai xeTai = XeTai(brand:"Samsung", productionYear: 1991);
 //xeTai.brand = "Huyndai";
 //xeTai.productionYear = 2002;
 print("Tuổi của xe tải là: ${xeTai.getAge()}");
 xeTai.showProductionYear();
 xeTai.chuyenCho();
 double canh = 35.5;
 HinhVuong hinhVuong1 = HinhVuong(canh:canh );
 print("Diện tích hình vuông: ${hinhVuong1.tinhDienTich()}");

}

User getOldestNameAndAge({ required List<User> userList}){
  User?  resultUser ;
  int oldestAge = 0 ;
  for (User user in userList)
  {
    int age = user.getAge();
    if( age >= oldestAge ) {
      oldestAge = age; 
      resultUser = user;
    }
  }
  return resultUser!;
}
