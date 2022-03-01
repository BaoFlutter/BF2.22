class Xe {
  String? brand;
  int? productionYear ; 

  // Khi class cha mà có hàm khởi tạo khác mặc định thì class con phải khởi tạo class cha 
  Xe({this.brand, this.productionYear});
  void chuyenCho(){
    print("Chuyên chở");
  }

  int getAge(){
    return DateTime.now().year - this.productionYear!;
  }

  

}