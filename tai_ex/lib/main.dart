import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  String chuoi = "";
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  String ageString = "Chưa xác định";

  TextEditingController birthYearController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tính Tổng"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nhap So Thu Nhat',
                hintText: 'Hãy nhập so',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Nhap So Thu Hai"),
              keyboardType: TextInputType.number,
            ),
            TextButton(
                onPressed: () {
                  var so1 = controller1.text;
                  var so2 = controller2.text;
                  //controller1.text : String
                  chuoi = (int.parse(controller1.text) + int.parse(controller2.text)).toString();

                  setState(() {});
                },
                child: Text("Tính Tong")),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Container(
                    padding: const EdgeInsets.only(
                        right: 20, left: 20, top: 30, bottom: 10),
                    child: Center(
                      child: Text(chuoi.toString()),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
