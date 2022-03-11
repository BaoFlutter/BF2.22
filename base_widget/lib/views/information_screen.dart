import 'package:base_widget/resources/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
class InformationScreen extends StatelessWidget {
  final String name;
  final String age;
  const InformationScreen({Key? key, required this.name, required this.age}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông tin chi tiết người dùng"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: informationCard(
              cardTitle: "Thông tin",
              firstLable: "Họ và tên",
              firstContent: name,
              secondLabel: "Tuổi",
              secondContent: age)
        ),
      ),
    );
  }
}
