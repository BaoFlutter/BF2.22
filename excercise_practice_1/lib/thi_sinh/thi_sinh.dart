class ThiSinh {
  String? soBaoDanh;
  String? hoVaTen;
  String? diaChi;
  String? mucUuTien;
  ThiSinh(
      {required this.soBaoDanh,
      required this.hoVaTen,
      required this.diaChi,
      required this.mucUuTien});
  void layThongTin() {
    print("So bao danh: ${this.soBaoDanh}" +
        "\n" +
        "HovaTen: ${this.hoVaTen}" +
        "\n" +
        "Dia chi: ${this.diaChi}" +
        "\n" +
        "Muc uu tien: ${this.mucUuTien}");
  }



}