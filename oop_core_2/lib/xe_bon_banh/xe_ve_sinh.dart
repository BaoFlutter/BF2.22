import 'xe.dart';
class XeVeSinh extends Xe{

  XeVeSinh({required brand, required productYear}):super(brand:brand, productionYear: productYear);
 
 @override
  void chuyenCho() {
    // TODO: implement chuyenCho
    print("Chuyên chở rác");
  }

}