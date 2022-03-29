import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
/*
Widgets:
- Sẵn của Flutter SDK
- Do Developer tạo ra:
+ Class : kế thừa StatelessWidget , StatefulWidget
+ Hàm :
 */

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen()
    );
  }
  /*
  Widget textWidget({ required String text}){
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),);
  }
   */
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Màn hình chính"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Expanded(
              flex: 1,
                child:  Container(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: ElevatedButton(
                      onPressed: (){
                        print("Xin chào các bạn");
                      },
                      child: Text("Test1")),
                )),
            Expanded(
                flex: 1,
                child:   Container(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    child: ElevatedButton(
                        onPressed: (){
                          print("Xin chào các bạn");
                        },
                        child: Text("Test2")),
                ),),
            Expanded(
                flex: 1,
                child:   Container(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    child: ElevatedButton(
                        onPressed: (){
                          print("Xin chào các bạn");
                        },
                        child: Text("Test3"))
                ),),

          ],
        )
      ),
    );
  }
}


