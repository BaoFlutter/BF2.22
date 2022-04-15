import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_lession/databases/information_database.dart';
import 'package:state_lession/models/information.dart';
import 'package:state_lession/views/second_screen.dart';

// * Stateless: có State cố định và không có vòng đời, không tự render (build) giao diện
// * Stateful : Có State thay đổi được và có vòng đời state, có thể tự render giao diện
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  // 1. Hàm tạo State: Tạo ra state , + context
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController? soBiTruController , soTruController;
  String resultNumber = "Chưa xác định";
   //2.  if(mounted)  print("State đã tồn tại");
  String adjustment = "Chưa xác định";

  final db = InformationDatabase();

  // 3. Khởi động State
  @override
  void initState() {
    // TODO: implement initState
    soBiTruController = TextEditingController();
    soTruController = TextEditingController();
    super.initState();
  }
  // 4. Load các dependences
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  // 5. Hàm build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tính hiệu"),
        centerTitle: true,
        foregroundColor: Colors.amber,
        backgroundColor: Colors.red,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Số bị trừ",
                  hintText: "Nhập Số bị trừ"
                ),
                keyboardType: TextInputType.number,
                controller: soBiTruController,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Số  trừ",
                    hintText: "Nhập Số trừ"
                ),
                keyboardType: TextInputType.number,
                controller: soTruController,
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    resultNumber = (int.parse(soBiTruController!.text) - int.parse(soTruController!.text)).toString();
                    adjustment = adjust(number: int.parse(resultNumber));
                  });
                  Information information = Information(
                      id: null,
                      so_bi_tru: int.parse(soBiTruController!.text),
                      so_tru: int.parse(soTruController!.text),
                      ket_qua: int.parse(resultNumber));
                  saveInformationToDatabase(information: information);
                },
                child: Text("Tính hiệu", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),)),
            Container(
              child: Card(
                child: Center(
                  child: Column(
                    children: [
                      Text(resultNumber),
                      Text(adjustment)
                    ],
                  )
                )
              ),
            ),
            TextButton(
                onPressed: (){
                  var route = MaterialPageRoute(builder: (context)=> SecondScreen());
                  Navigator.push(context, route);
                },
                child: Text("Chuyển trang"))
          ],
        ),
      ),

    );
  }
  // 6. Sau khi giao diện đã được build xong mà Widget HomeScreen có sự thay đổi thì hàm này sẽ được chạy
  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
  // 7. setState : Khi hàm này được chạy thì : giao diện được build lại với giá trị đặt trong nó

  //8. Ngưng hoạt động của State
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }
  //9. Huỷ và xoá State đi
  @override
  void dispose() {
    // TODO: implement dispose
    soTruController!.dispose();
    soBiTruController!.dispose();
    super.dispose();
  }
  // mounted = false;

  String adjust({number}){
    if((number < 0) ||(number>10)) return "Điểm không hợp lệ";
    if(number < 5) return "Chưa đạt";
    return "Đạt";
  }

  saveInformationToDatabase({ required Information information}) async {
   await db.addInformation(information);
  }
}
