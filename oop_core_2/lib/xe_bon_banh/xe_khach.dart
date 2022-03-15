import 'xe.dart';
class XeKhach extends Xe{
  int? soGiuongNam;

  // Khi cha có hàm khởi tạo ko phải mặc định thì lớp con phải khởi tạo cả lớp cha 
  XeKhach({required brand, required productYear, this.soGiuongNam}):super(brand:brand, productionYear: productYear);

  showBrand(){
    print("Đây là hãng ${super.brand}");
    super.chuyenCho();
  }

  @override
  void chuyenCho() {
    // TODO: implement chuyenCho
    print("Xe này chỉ chở người");

  }





}