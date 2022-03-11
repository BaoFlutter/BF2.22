import 'package:oop_dart_core_1/oop_dart_core_1.dart' as oop_dart_core_1;

import 'movie.dart';
import 'user.dart';

void main(List<String> arguments) {
  // Object Oriented Programming

  User bao = User(userName: "Bao", birthYear:1991, address:"Ha Noi"); // tạo 1 đối tượng , instance
  print(bao.userName);
  User tai = User(userName: "Tai", birthYear:2001, address:"SG");
  print(tai.birthYear);
  User thai = User(userName: "Thai", birthYear:2001, address:"SG");
  print("Tuổi của Thái là: ${thai.getAge()}");
  bao.setPhoneNumber(phoneNumber: "0349582808");
  print("Số điện thoại của ${bao.userName} là : ${bao.getPhoneNumber()} ");
  

  int number = 10;

  // Đối tượng , Thực thể: Movie ( tên , năm phát hành, doanh thu , xác định mức độ thành công : < 1000 ty : lỗ, , >=1000 tỷ lãi )

  Movie marvelIronman = Movie(name: "IronMan", launchYear: 2008, revenue: 2000);
  Movie spiderman = Movie(name: "SpiderMan", launchYear: 2021, revenue: 500);
  Movie haiVN = Movie(name: "Phim Hai", launchYear: 2020, revenue: 5000);

  List<Movie> movieList = [marvelIronman, spiderman, haiVN  ];
  Movie maxMovie = findMostMovie(movieList:movieList );
  print("Bộ phim có doanh thu cao nhất là: ${maxMovie.name} có doanh thu là: ${maxMovie.revenue}");

  
  marvelIronman.adjustMovie();
  spiderman.adjustMovie();

}


Movie findMostMovie ({ required List<Movie>? movieList}){
   Movie? maxMovie ;
   int maxRevenue = 0; 

   for(Movie movie in movieList!)
   {
     if(movie.revenue! > maxRevenue ){
       maxRevenue = movie.revenue!;
       maxMovie = movie;
     }
   }

   return maxMovie!;








}
