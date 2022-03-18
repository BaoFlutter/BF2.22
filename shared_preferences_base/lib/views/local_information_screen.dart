import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:state_base/resources/strings.dart';
import 'package:state_base/resources/widgets/information_card.dart';
class LocalInformationScreen extends StatefulWidget {
  const LocalInformationScreen({Key? key}) : super(key: key);

  @override
  State<LocalInformationScreen> createState() => _LocalInformationScreenState();
}

class _LocalInformationScreenState extends State<LocalInformationScreen> {

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<Map<String, dynamic>>? futureInformation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInformationFromLocalStorage();
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
        child: FutureBuilder<Map<String, dynamic>>(
          future: futureInformation,
          builder: (context, snapshot){
            // load lỗi
            if(snapshot.hasError) return Center(
              child: Text("Load dữ liệu lỗi"),
            );
            // load chưa xong
            if(!snapshot.hasData) return Center(
              child: CircularProgressIndicator(),
            );
            // load đã xong
            Map<String, dynamic> informationMap = snapshot.data!;
            return InformationCard(
                cardTitle: INFORMATION,
                firstLable: AVERAGE_MARK,
                firstContent: informationMap["average_mark"],
                secondLabel: ADJUSTMENT,
                secondContent: informationMap["adjustment"]);
          }
        ),

      ),
    );
  }

  getInformationFromLocalStorage(){
    futureInformation = _prefs.then((SharedPreferences prefs){
      String averageMark = prefs.getString("average_mark")!;
      String adjustment = prefs.getString("adjustment")!;
      return {
        "average_mark": averageMark,
        "adjustment" : adjustment
      };
    });
  }


}
