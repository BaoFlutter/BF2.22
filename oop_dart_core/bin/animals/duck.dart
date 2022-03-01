import 'animal.dart';

class Duck extends Animal{
  // bắt buộc ghi đè hàm trừu tượng, định nghĩa rõ ra 
  @override
  void takeSound() {
    print("Quac quac ");
  }


}