import 'package:oop_core_2/hinh/hinh_chu_nhat.dart';

class HinhVuong extends HinhChuNhat{
  double? canh;
  HinhVuong({this.canh}) : super(chieuDai: canh, chieuRong: canh);


}