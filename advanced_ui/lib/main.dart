import 'package:flutter/material.dart';

import 'views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Raleway"
      ),
      home: HomeScreen(),
    );
  }
}
// 1. Nhóm các khối lớn thành 1 cột ( Column ) hoặc thành 1 hàng ( Row )
// 2. Xử lý các 1 - khối lớn thì chia thành các khối nhỏ hơn theo 1 cột hay 1 hàng nào đó
// 3. code : Từ toàn cảnh đến tiểu cảnh

