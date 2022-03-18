import 'package:try_catch/try_catch.dart' as try_catch;

void main(List<String> arguments) {
  var input = "Flutter";
  // 1. try...catch 
  /*
  try {
    int number = int.parse(input);
  }
  catch (e){
    print(e.toString());
  };
  print("Chương trình kết thúc");
  */
  // 2. try ... on... catch 
  /*
  try {
    int number = int.parse(input);
  }
  on FormatException{
    print("Đây là nhập sai format");
  }
  catch (e){
    print(e.toString());
  };
  print("Chương trình kết thúc");
  */

  // 3. try catch  finally 
  try {
    int number = int.parse(input);
  }
  catch (e){
    print(e.toString());
  }
  finally{  // Khối lệnh được đặt trong finally luôn luôn được chạy 
    print("Luôn luôn được chạy trong khối này");
  }
  print("Chương trình kết thúc");

 try{
    String ageAdjustment = adjustAge(age: -10);
 }
 catch(e)
 {
   print(e.toString());
 }


}

// tự tạo ra exception : throw Exception 
String adjustAge({ required int age}){
  if(age< 0) throw Exception("InvalidAgeException: Tuổi nhập vào không được nhỏ hơn hoặc bằng không");
  if(age < 16 ) return "Bạn đang tuổi thiếu niên";
  if(age< 40) return "Bạn đang còn thanh niên";
  if(age < 60 ) return "Bạn đang trung niên";
  return "Bạn đã gìa";


}
