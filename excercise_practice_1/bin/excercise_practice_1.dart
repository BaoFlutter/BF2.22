import 'package:excercise_practice_1/excercise_practice_1.dart' as excercise_practice_1;
const String ID_FORM = "B170xxxx" ;
void main(List<String> arguments) {
  print(checkIDForm(checkId: "B17054a2").toString());
}

bool checkIDForm({ required String checkId }){
  RegExp form = RegExp(r'B170[1-9]{4}');
  return form.hasMatch(checkId); // true or false 
}

// Thái 
int sumOfNumber(int n){
  int sum = 0;
  int number = 0;
  for(int i = 1 ; i <= 20; i++){
    number = n*i;
    sum += number;
  }
   return sum; 
}
// Tài 

int tinhTongCacTich(int n) {
  int sum = 0;
  int number = 0;
  for (int i = 1; i <= 20; i++) {
    number = n * i;
    sum = sum + number;
  }
  return sum;

}
