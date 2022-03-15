class Student {
 
  String? maSoHocSinh;
  String? hoTen;
  String? _ngaySinh;
  String? _soDienThoai;
  double? diemToan;
  double? diemVan;
  double? diemAnh;

  // Hàm khởi tạo : không nên truyền biến private vào
  // Tài 
  Student(
      {required this.maSoHocSinh,
      required this.hoTen,
      required this.diemAnh,
      required this.diemToan,
      required this.diemVan});

  void datNgaySinh(String ngaySinh)
  {
    this._ngaySinh = ngaySinh;
  }

  String layNgaySinh() => this._ngaySinh!;

  void setPhoneNumber(String soDienThoai){
    this._soDienThoai = soDienThoai ;

  }

  String get phoneNumber => this._soDienThoai!;

  void getStudentInformation(){

    print("Ma So Hoc Sinh: ${this.maSoHocSinh}" +
        "\n" +
        "Ten Hoc Sinh: ${this.hoTen}" +
        "\n" +
        "Ngay Sinh: ${this._ngaySinh}" +
        "\n" +
        "So dien thoai: ${this._soDienThoai}" +
        "\n" +
        "Diem Anh : ${this.diemAnh}" +
        "\n" +
        "Diem Toan: ${this.diemToan}" +
        "\n" +
        "Diem Van : ${this.diemVan}");
  }

   double tinhDiemTrungBinh() => (this.diemToan! + this.diemVan! + this.diemAnh!)/3;
   
   String xepLoai(){
    var diemXepLoai = this.tinhDiemTrungBinh();
    if (diemXepLoai < 5)  return "Yếu";
    else if (diemXepLoai < 6.5) return "Trung Bình";
    else if (diemXepLoai < 8) return "khá";
    else return "Giỏi";
  }
   
  
   
}