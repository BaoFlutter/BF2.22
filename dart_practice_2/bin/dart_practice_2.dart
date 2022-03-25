import 'package:dart_practice_2/dart_practice_2.dart' as dart_practice_2;

void main(List<String> arguments) {
  List<int> numberList = [12, 25, 1, 10];
  double averageNumber = getEverageSum(numberList: numberList);
  int minNumber = getMinNumber(numberList: numberList);
}


double getEverageSum({required List<int> numberList}){
  double sum = 0;
  for(var number in numberList){
    sum += number;
  }
   return sum / numberList.length;
}

int getMinNumber({ required List<int> numberList }){
  int minNumber = numberList[0];
  for(var number in numberList){
    if(minNumber > number) {
      minNumber = number;
    }
  }
  return minNumber;
 
}