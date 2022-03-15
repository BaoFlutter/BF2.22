import 'xe.dart';

class XeTai extends Xe {

XeTai({required brand, required productYear}):super(brand:brand, productionYear: productYear);


@override
  void chuyenCho() {
    // TODO: implement chuyenCho
    print("Chuyên chở vật liệu");
  }
}