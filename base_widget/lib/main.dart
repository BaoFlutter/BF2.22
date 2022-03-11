import 'package:base_widget/views/information_screen.dart';
import 'package:flutter/material.dart';

import 'resources/widgets/common_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController birthYearController = TextEditingController();
  String userName = "Chưa xác định";
  String age = "Chưa xác định";

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    birthYearController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông tin người dùng"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              // TextField - Ho Va Ten
              textInputWidget(
                  labelText: "Họ và Tên",
                  hintText: "Nhập họ và tên của bạn",
                  controller: nameController),
              // TextField - Năm Sinh
              textInputWidget(
                  labelText: "Năm Sinh",
                  hintText: "Nhập năm sinh",
                  controller: birthYearController),
              // Button - Xác nhận
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      userName = nameController.text;
                      age = (DateTime.now().year - int.parse(birthYearController.text)).toString();
                    });
                  },
                  child: Text("Xác nhận")),
              // Card information
              informationCard(
                  cardTitle: "Thông tin",
                  firstLable: "Họ và tên: ",
                  firstContent: userName,
                  secondLabel: "Tuổi: ",
                  secondContent: age),
              // Text Button
              TextButton(
                  onPressed: (){
                    var route = MaterialPageRoute(builder: (context) => InformationScreen(name: userName, age: age));
                    Navigator.push(context, route);
                  },
                  child: Text("Chuyển trang"))
            ],
          ),
        ),
      )
    );
  }

Widget textInputWidget({required String labelText, required String hintText, required controller }){
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          hintText: hintText,
        ),
        controller: controller,
      )
    );
}




}



