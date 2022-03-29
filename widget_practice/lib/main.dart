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

  String ageString = "Chưa xác định";

  TextEditingController birthYearController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ứng dụng tính tuổi"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nhập năm sinh của bạn',
                hintText: 'Hãy nhập năm sinh',
              ),
              keyboardType: TextInputType.number,
              controller: birthYearController,
            ),
            TextButton(
                onPressed: (){
                  setState(() {
                    ageString = (DateTime.now().year - int.parse(birthYearController.text)).toString();
                  });
                },
                child: Text("Tính Tuổi")),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Container(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 10),
                  child: Center(
                    child: Text(ageString),
                  )
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}


