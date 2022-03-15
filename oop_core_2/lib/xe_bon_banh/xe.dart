class Xe {
  String? brand; 
  int? productionYear;

  Xe({required this.brand, required this.productionYear});

  int tinhTuoiXe()
  {
    return DateTime.now().year - this.productionYear!;
  }

  void chuyenCho(){
    print("Xe để chở");
  }

}