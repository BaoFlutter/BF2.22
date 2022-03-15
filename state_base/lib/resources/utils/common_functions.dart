
double getAverageMark({ required double mathMark , required double litetureMark, required double englishMark}){
  return (mathMark + litetureMark + englishMark )/3;
}

String adjustStudent({ required double averageMark})
{
  if((averageMark > 10 )||(averageMark < 0 )) return "Điểm không hợp lệ";
  if(averageMark < 5 ) return "Chưa Đạt";
  if(averageMark < 8.5) return "Đạt";
  if(averageMark <= 10 ) return "Xuất sắc";
  return "Điểm không hợp lệ";
}