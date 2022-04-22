import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Future<String>? futureStr ;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInforFromLocalStorage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông tin"),
        centerTitle: true,
      ),

      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder<String>(
            future: futureStr,
            builder: (context, snapshot){
              if(snapshot.hasError) return Center(
                child: Text("Load dữ liệu lỗi"),
              );
              if(!snapshot.hasData) return Center(
                child: CircularProgressIndicator(),
              );

              String result = snapshot.data!;
              return Center(
                child: Text(result),
              );

            },
          )
      ),

    );
  }

  getInforFromLocalStorage() async {


    futureStr = _prefs.then((SharedPreferences prefs)async{
      String result = await prefs.getString("result_number")!;
      return result;
    });
  }


}

