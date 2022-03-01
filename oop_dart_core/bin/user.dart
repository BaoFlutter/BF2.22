class User {
// là chứa biến và hàm
// Thuộc tính : các biến ( mô tả các thuộc tính)
String? userName; // biến public
String? address;  
int? birthYear;
String? _phoneNumber;  // biến private : chỉ được sử dụng trong class 
int _money = 200000000;
static double PI = 3.145443 ;

// Phương thức: các hàm (xử lý  các thuộc tính)
// Hàm khởi tạo : Chỉ có duy nhất 1 hàm khởi tạo, nếu mà ko có hàm khởi tạo thì lấy măc
// định là hàm khởi tạo ko truyền giá trị thuộc tính
User({ required this.userName,required this.address, required this.birthYear});
int getAge(){ // hàm public
  return DateTime.now().year - this.birthYear!;
}

int _getMoney() // hàm private 
{
return this._money * 24933242; 
}
void updateBirthYear ({ required int birthYear}){
  this.birthYear = birthYear;
}

// getter, setter 
// Getter
String getPhoneNumber(){
  return this._phoneNumber!;
}

String get phoneNumber => this._phoneNumber!;
// => a : { return a; }
// settter 
void setPhoneNumber({required String phoneNumber})
{
  this._phoneNumber = phoneNumber;
}





}