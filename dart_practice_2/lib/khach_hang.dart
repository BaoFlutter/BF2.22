class KhachHang {
  String? hoTenChuHo;
  String? soNha;
  double? maSoCongToDien;

  KhachHang({
    required this.hoTenChuHo,
    required this.soNha,
    required this.maSoCongToDien,
  });
  void thongTinKhachHang() {
    print("Ho Ten: ${this.hoTenChuHo}" +
        "\n" +
        "So Nha: ${this.soNha}" +
        "\n" +
        "Ma Cong To Dien: ${this.maSoCongToDien}");
  }


  void editInformation({ String? name, String? houseNumber, double? usedElectricNumber })
  {
    if(name!=null) this.hoTenChuHo = name!;
    if(houseNumber!=null) this.soNha = houseNumber!;
    if(usedElectricNumber!=null) this.maSoCongToDien = usedElectricNumber!;
  }
}