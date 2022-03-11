import 'package:excercise_2_dart_core/excercise_2_dart_core.dart' as excercise_2_dart_core;

void main(List<String> arguments) {
  printNumbersDivisble3Divisible5(fromNumber: 1, toNumber: 1000);

  var classInformation = {
  "id": 12,
  "name": "Báo Flutter 1.2",
  "description": "lớp học lập trình Flutter, hotline: 0349582808",
};
String description =  classInformation["description"] as String;
String hotline =  description.substring(description.length-10 , description.length);
print(hotline);

}


void printNumbersDivisble3Divisible5({required int fromNumber, required int toNumber }){
  int divisble3Numbers = 0; 
  int divisble5Numbers = 0;

  for(int i = fromNumber; i<= toNumber; i++)
  {
    if(i % 3 == 0) { divisble3Numbers ++;}
    if(i% 5 == 0 )  { divisble5Numbers ++;}
  }
  print("Có $divisble3Numbers số chia hết cho 3 ");
  print("Có $divisble5Numbers số chia hết cho 5 ");

}
