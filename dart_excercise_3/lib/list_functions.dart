void printIndexsOfEvenNumber(List<int> numberList ){
  print("Chỉ số của số chẵn trong list.");
  for(int i = 0 ; i < numberList.length; i++)
  {
    if(numberList[i] % 2 == 0) {
     print("$i");
    }
  }

}

// 3,2,5,1
// max = 3 ; 
// max = 3; i =1 
//max = 5 ; i = 2



int findMaxNumber(List<int> numberList)
{
  int max = numberList[0];
  for(int i = 1; i< numberList.length ; i++)
  {
    if(max < numberList[i]) max = numberList[i];
  }
  return max; 
}

int findMinNumber(List<int> numberList)
{
  int min = numberList[0];
  for(int i = 1; i< numberList.length ; i++)
  {
    if(min > numberList[i]) min = numberList[i];
  }
  return min; 
}

// sắp xếp nổi bọt 
// 3, 2, 5, 1, 8, 7

// i = 0 : j = 1:  2, 3, 5, 1, 8, 7 
// i = 0 : j = 2:  2, 3, 5, 1, 8, 7 
// i = 0 : j = 3:  2, 3, 5, 1, 8, 7 
// i = 0 : j = 3:  2, 3, 1, 5, 8, 7 
// i = 0 : j = 4:  2, 3, 1, 5, 8, 7 
// i = 0 : j = 4:  2, 3, 1, 5, 7, 8 
// i = 1 : j = 1:  2, 3, 1, 5, 7, 8 
// i = 1 : j = 2:  2, 1, 3, 5, 7, 8 
// i = 1 : j = 3:  2, 1, 3, 5, 7, 8 
// i = 1 : j = 4:  2, 1, 3, 5, 7, 8 
// 
///......

List<int> sapXepDaySo(List<int> numberList){
  List<int> resultList = numberList;

  for(int i = 0 ; i< numberList.length ; i++)
  {
    for(int j = 1; j< numberList.length - i ; j++ )
    {
      if(resultList[j-1] > resultList[j])
      {
        int tempNumber = resultList[j-1]; 
        resultList[j-1] = resultList[j];
        resultList[j] = tempNumber;
      }

    }


  }
  return resultList;
}

void printElementIncludingSmth(List<String> stringList, String includedString ){

  for(String element in stringList)
  {
    if(element.contains(includedString)) print(element);
  }

}