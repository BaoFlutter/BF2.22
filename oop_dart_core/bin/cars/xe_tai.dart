import 'xe.dart';

class XeTai extends Xe {
  // Khi class cha mà có hàm khởi tạo khác mặc định thì class con phải khởi tạo class cha 
  XeTai({required String brand, required int productionYear}):super(brand: brand, productionYear: productionYear);
  // Lấy biến, hàm public của class cha thông qua biến Super 
  void showProductionYear(){
    int birthYear = super.productionYear!;
    print("Năm sản xuất là: $birthYear và tuổi của nó là: ${super.getAge()}" );
  }
  // có thể ghi đè , sửa hàm của cha theo ý của mình
  @override
  void chuyenCho() {
    // TODO: implement chuyenCho
    //super.chuyenCho();
    print("Chuyên chở vật liệu xây dựng");
  }
}