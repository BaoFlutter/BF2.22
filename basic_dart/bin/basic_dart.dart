import 'package:basic_dart/basic_dart.dart' as basic_dart;
import 'package:test/scaffolding.dart';

int year = 2022; 
void main(List<String> arguments) {
  // Kiểu dữ liệu , biến
  // Kiểu dữ liêu là gì : int , double, String , bool, List .. 
  // Biến là : là một cái tên có địa chỉ và giá trị 
  int number = 10 ; 
  number = 40 + year ; 
  print("Số number là: $number");
  const int secondNumber = 30; 
  //secondNumber = 60; //Error : secondNumber là Biến hằng không thể thay đôi giá trị 
  final int thirdNumber = 50; // Hằng Final 
  //thirdNumber = 60; //Error : thirdNumber là Biến hằng không thể thay đôi giá trị
  final int fothNumber = number; // final có thể lấy giá trị từ 1 biến

  String name; 
  String birthDay = "15/08/2002";
  print("Ngày sinh là: " + birthDay);
  print("Số number là: " + number.toString());

  int tong = tinhTong(10, 20);
  print("Tổng 2 số là: $tong");
  printName();
  int m = 5; 
  int soBinhPhuong = tinhBinhPhuong(m);
  print("Số bình phương của $m là: " + soBinhPhuong.toString() );
  double dienTich = tinhDienTichHinhChuNhat(5.4,  6.0);
  print("Diện tích hình chữ nhật là: $dienTich");
  printNameNew("Tôi sẽ là developer");
  printNameNew("Tôi sẽ thành công");

}

// Hàm 
// Khái niệm : Hàm là một công cụ để thực thi 1 nhiệm vụ nào đó 
// Kiểu dữ liệu + tên hàm + ([int a, String c]){ .... }

int tinhTong(int a, int b ){
  int sum = a + b; 
  return sum; 
}

void printName(){
  print("@@@@ Báo Flutter @@@ $year") ;

}

void printNameNew(String text){
  print(text) ;

}

int tinhBinhPhuong(int n)
{
   return n*n; 
}

// biến toàn cục : Là biến được khởi tạo ngoài hàm, sử dụng được trong tất cả các hàm 
// biến cục bộ : Là biến được khai báo trong hàm và chỉ được sử dụng trong hàm

// Khi tạo một hàm nên sử dụng biến trong hàm đó là biến cục bộ 
// Chu vi hình vuông :  4 * cạnh ; 
// diện tích hình chữ nhât: dai*rong; 
double tinhDienTichHinhChuNhat( double chieuDai, double chieuRong  ){
  return chieuDai * chieuRong;
}
double tinhChuViHinhVuong(double canh){
  return 4 * canh; 
}

double tinhDiemTrungBinh(double toan, double van, double anh) {
    double diemtTB = (toan + van + anh)/3;
    return diemtTB;
  }

