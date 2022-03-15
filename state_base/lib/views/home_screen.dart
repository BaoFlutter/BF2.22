import 'package:flutter/material.dart';
import 'package:state_base/resources/strings.dart';
import 'package:state_base/resources/utils/common_functions.dart';
import 'package:state_base/resources/widgets/custom_button.dart';
import 'package:state_base/resources/widgets/information_card.dart';
import 'package:state_base/resources/widgets/text_input_widget.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  // 1. Hàm tạo ra State , gắn Context với state đó , context là linh hồn widget
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String averageMark = "Chưa xác định";
  String adjustment = "Chưa xác định";
  // 2. mounted = true : Khi state đã có thì mounted = true

  //3. Khởi tạo State lên
  TextEditingController? mathController, litetureController, englishController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mathController = TextEditingController();
    litetureController = TextEditingController();
    englishController  = TextEditingController();
  }

  //4. didChangeDependecy
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  // 5. Hàm build
  @override
  Widget build(BuildContext context) {
    if(mounted) {
      print("Giá trị của biến mounted: ${mounted}");
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(STUDENT_ADJUSTMENT),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(right: 20, left: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              // Nhập điểm toán
              TextInputWidget(
                  labelText: MATH_MARK,
                  hintText: MATH_MARK_HINT,
                  isOnlyNumber: true,
                  controller: mathController),
              // Nhập điểm văn
              TextInputWidget(
                  labelText: MATH_LITETURE,
                  hintText: LITETURE_MARK_HINT,
                  isOnlyNumber: true,
                  controller: litetureController),
              // Nhập điểm Anh
              TextInputWidget(
                  labelText: ENGLISH_MARK,
                  hintText: ENGLISH_MARK_HINT,
                  isOnlyNumber: true,
                  controller: englishController),
              // Button đánh gía
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){
                    // 7. Chạy setState : thay đổi State , chạy lại hàm build với các giá trị được cập nhật bên trong
                    setState(() {
                      averageMark = getAverageMark(
                          mathMark: double.parse(mathController!.text),
                          litetureMark: double.parse(litetureController!.text),
                          englishMark: double.parse(englishController!.text)).toString();
                      adjustment = adjustStudent(averageMark: double.parse(averageMark));
                    });
                  },
                  child: Text(ADJUSTMENT)),
              // Information
              InformationCard(
                  cardTitle: INFORMATION,
                  firstLable: AVERAGE_MARK,
                  firstContent: averageMark,
                  secondLabel: ADJUSTMENT,
                  secondContent: adjustment),



               Row(
                 children: [
                   Expanded(
                     flex: 1,
                     child: CustomButton(
                         onPressed: (){
                           print("testing");
                         },
                         title: "Test 1"),
                   ),
                   Expanded(
                     flex: 1,
                     child: CustomButton(
                         onPressed: (){
                           print("testing");
                         },
                         title: "Test 2"),
                   ),
                   Expanded(
                     flex: 1,
                     child: CustomButton(
                         onPressed: (){
                           print("testing");
                         },
                         title: "Test 3"),
                   ),
                 ],
               )
            ],
          ),
        ),
      ),
    );
  }
  // 6. Chạy khi có Widget Configuration thay đổi
  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
  // 8. Hàm deactivate : dừng hoạt động của State
   @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  // 9. hàm dispose : Xoá State đi khi chuyển sang Widget khác, tắt app
   @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mathController!.dispose();
    litetureController!.dispose();
    englishController!.dispose();
  }

  // 10. mounted = false


}
