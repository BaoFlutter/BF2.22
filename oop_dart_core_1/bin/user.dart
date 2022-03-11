class User {
// nhiều biến  : các thuộc tính
String? userName; 
int? birthYear; 
String? address; // public 
String? _phoneNumber;  // private : Chỉ có được sử dụng trong class 

// Biến và hàm : public và private


// hàm : Phương thức
// Hàm khởi tạo : Tức truyền giá trị của thuốc tính 
//User(); // Hàm khởi tạo mặc định 
User({ required this.userName, required this.birthYear, required this.address});
// nhiều hàm : thường là để xử lý các biến của class 
int getAge(){
  return DateTime.now().year - this.birthYear!;
}
// Hàm getter
String getPhoneNumber(){
 return this._phoneNumber!;
}

String phoneNumber() =>  this._phoneNumber!;

// { return a ; } <=> => a;

// Hàm setter 
void setPhoneNumber({required String phoneNumber }){
this._phoneNumber = phoneNumber;
}

int _getMoney(){
   return 300000000000;
}

}