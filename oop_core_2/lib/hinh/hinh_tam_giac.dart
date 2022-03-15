import 'package:oop_core_2/hinh/hinh.dart';

class HinhTamGiac extends Hinh{
  // Lớp con của lớp trừu tượng phải định nghĩa lại cho các hàm trừu tượng
  @override
  void getInformation(int? year) {
    print('$year');
  }

  @override
  double tinhDienTich() {
    // TODO: implement tinhDienTich
    return 10;
  }



}