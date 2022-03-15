import 'package:oop_core_2/hinh/hinh_vuong.dart';
import 'package:oop_core_2/oop_core_2.dart' as oop_core_2;
import 'package:oop_core_2/xe_bon_banh/xe_khach.dart';
import 'package:oop_core_2/xe_bon_banh/xe_tai.dart';

void main(List<String> arguments) {

  XeTai xeTaiHuyn = XeTai(brand: "HuynDai", productYear: 1998);
  // Class con có thể sở hữu , sử dụng tất cả biến , hàm public của class cha
  xeTaiHuyn.brand = "Huyn Dai";
  xeTaiHuyn.productionYear = 2019;
  int tuoi = xeTaiHuyn.tinhTuoiXe();
  print("Tuổi của xe là : $tuoi");

  XeKhach xeVinhLong = XeKhach(brand: "Toyota", productYear: 2020, soGiuongNam: 30);
  xeVinhLong.showBrand();

  HinhVuong hinhVuong1 = HinhVuong(canh: 30);

  print("Dien tích hình vuông: ${hinhVuong1.tinhDienTich()}, Chu vi hình vuông: ${hinhVuong1.tinhChuVi()} ");




  

 
}
