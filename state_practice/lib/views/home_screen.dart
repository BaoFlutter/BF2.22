import 'package:flutter/material.dart';
import 'package:state_practice/resources/widgets/container_width_text.dart';
import 'package:state_practice/resources/widgets/text_and_text_field.dart';

import '../resources/strings.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController? customerNameController, bookSumController ;
  FocusNode? focusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    customerNameController = TextEditingController();
    bookSumController = TextEditingController();
    focusNode = FocusNode();
  }
  @override
  Widget build(BuildContext context) {
    var statusHeight = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: statusHeight,
            ),
            ContainerWithText(
                text: BOOK_SELLING_PROGRAM,
                textColor: Colors.white70,
                boxColor: Colors.green,
                textInCenter: true,
            ),
            ContainerWithText(
                text: INVOICE_INFOR,
                textColor: Colors.black,
                textInCenter: false,
                boxColor: Colors.green),
            TextAndTextField(
                lableText: "Tên khách hàng: ",
                controller: customerNameController,
                isNumber: false,
                hintText: "Nhập họ và tên khách hàng",
                focusNode: focusNode),
            TextAndTextField(
                lableText: "Số lượng sách",
                controller: bookSumController,
                isNumber: true,
                hintText: "Nhập số lượng sách:",
                focusNode: focusNode),
            const SizedBox(
              height: 30,
            ),
            ContainerWithText(
                text: STASTIC_INFOR,
                textColor: Colors.black,
                textInCenter: false,
                boxColor: Colors.green),
            const SizedBox(
              height: 30,
            ),
            ContainerWithText(
                text: "",
                textColor: Colors.black,
                textInCenter: false,
                boxColor: Colors.green),
          ],
        ),
      ),

    );
  }
}
