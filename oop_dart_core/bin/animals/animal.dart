// Class trừu tương: Giống như class bình thường nhưng có từ khoá abstract và có thể có hàm trừu tường  
abstract class Animal {
  // Có thể chứa hàm trừu tượng 
  // Hàm trừu tượng
  void takeSound();
  // hàm bình thường 
  void description(){
    print("Đây là lớp mô tả động vật");
  }
}