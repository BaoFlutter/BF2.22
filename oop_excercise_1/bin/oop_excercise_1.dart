import 'package:oop_excercise_1/oop_excercise_1.dart' as oop_excercise_1;
import 'package:oop_excercise_1/student.dart';

void main(List<String> arguments) {
   

   Student hoa = Student(maSoHocSinh: "AH145", hoTen: "Nguyen thi Hoa ", diemAnh: 8.4, diemToan: 9.6, diemVan: 8);
   hoa.hoTen= "Nguyễn Thanh Hoa";
   hoa.datNgaySinh("15/09/2003");
   print(hoa.layNgaySinh());
   hoa.setPhoneNumber("0983242324");


   Student tai = Student(maSoHocSinh: "Z12CB", hoTen: "Nguyen Tai", diemAnh: 9.4, diemToan: 8.6, diemVan: 9.5);
   Student thai = Student(maSoHocSinh: "Q129F", hoTen: "Ho Thai", diemAnh: 8.6, diemToan: 9.4, diemVan: 8.2);

   List<Student> studentList = [hoa, tai , thai];

   hoa.getStudentInformation();
   Student bestStudent = findBestStudent(studentList: studentList);
   print("Học sinh có điểm cao nhất là : ${bestStudent.hoTen}, \n điểm cao nhất là: ${bestStudent.tinhDiemTrungBinh().toStringAsFixed(2)} \n có học lực là: ${bestStudent.xepLoai()} ");

   

}

Student findBestStudent({  required List<Student> studentList })
{
  Student? studentResult ;
  double  maxAverage = 0 ;
  for(Student student in studentList )
  {
    double diemTrungBinh = student.tinhDiemTrungBinh();
    if(diemTrungBinh > maxAverage ) {
      maxAverage = diemTrungBinh;
      studentResult = student;
    }

  }
    return studentResult!;

}
