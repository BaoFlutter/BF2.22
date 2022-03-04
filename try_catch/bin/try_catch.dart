import 'package:try_catch/try_catch.dart' as try_catch;

void main(List<String> arguments) {
  var input = "Flutter";
  /*
  try{
    // Đặt các khối code nghi có Exception 
     int number = int.parse(input);
  }
  //Catch:  Ý nghĩa : 1. Show rõ loại Exception , 2. Chương trình vẫn tiếp tục 
  catch(e){
    // e: Exception - Là Exception tổng quát 
    print(e.toString());
  }
  */

/*
  try{
    // Đặt các khối code nghi có Exception 
     int number = int.parse(input);
  }
  on FormatException{
    print("Input nhập vào phải là số nguyên");
  }
  //Catch:  Ý nghĩa : 1. Show rõ loại Exception , 2. Chương trình vẫn tiếp tục 
  catch(e){
    // e: Exception - Là Exception tổng quát 
    print(e.toString());
  }
  */

  try{
    // Đặt các khối code nghi có Exception 
     int number = int.parse(input);
  }
  //Catch:  Ý nghĩa : 1. Show rõ loại Exception , 2. Chương trình vẫn tiếp tục 
  catch(e){
    // e: Exception - Là Exception tổng quát 
    print(e.toString());
  }
  finally{
    print("Bắt buộc phải được thực thi");
  }

  print("Chương trình kết thúc");
  try{
    danhGiaTuoi(inputAge: -4);
  }
  catch(e)
  {
    print(e.toString());
  }
  danhGiaTuoi(inputAge: 32);

}

void danhGiaTuoi({required int inputAge})
{
  if(inputAge <= 0) throw Exception("AgeException - Tuổi không được nhỏ hơn hoặc bằng 0, Vui lòng nhập lại");
  if( inputAge < 40 ) print("Bạn vẫn trẻ");
  else if(inputAge <= 60) print("Bạn trung niên");
  else print("Bạn đã già ");
}
