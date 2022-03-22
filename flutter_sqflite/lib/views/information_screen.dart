import 'package:flutter/material.dart';
import 'package:state_base/databases/result_database.dart';

import '../models/result.dart';
class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {

  final db = ResultDatabase();
  Future<List<Result>>? futureResultList ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getResults();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Danh sách thông tin"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder<List<Result>>(
          future: futureResultList,
          builder: (context, snapshot){
            if(snapshot.hasError) return Center(
              child: Text("Load Error"),
            );
            if(!snapshot.hasData) return Center(
              child: CircularProgressIndicator(),
            );
            List<Result> resultList = snapshot.data!;
            return ListView.separated(
              padding: const EdgeInsets.all(10),
              itemCount: resultList.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  child: Card(
                    child: Container(
                      child: Column(
                        children: [
                          Text("Average Mark:  " + resultList[index].average_mark.toString()),
                          Text("Adjustment:  " + resultList[index].adjustment.toString())
                        ],
                      ),
                    ),
                  ),
                );

              }, separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
            );

          },

        ),
      ),
    );
  }

  getResults(){
    futureResultList = db.fetchAll();
  }
}
