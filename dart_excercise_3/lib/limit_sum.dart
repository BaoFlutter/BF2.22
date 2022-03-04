
void showNumbersGotSumSmaller30(int fromNumber, int toNumber, int maxSum){
 int sum = 0; 
 for(int i = fromNumber; i<= toNumber; i++)  // 1-> 3; 3 
 {
   sum = sum + i;
   if(sum > maxSum) break; 
   print("$i");
 }
}

void showNumbersAndSumGotSumSmaller30(int fromNumber, int toNumber, int maxSum){
 int sum = 0; 
 for(int i = fromNumber; i<= toNumber; i++)  // 1-> 3; 3 
 {
   sum = sum + i;
   if(sum > maxSum) {
     sum = sum - i;
     print("Tổng các số đó là : $sum");
     break; 
   }
   print("$i");
 }
}