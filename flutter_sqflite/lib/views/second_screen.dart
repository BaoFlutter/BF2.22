import 'package:flutter/material.dart';
import 'package:state_lession/databases/information_database.dart';

import '../models/information.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final db = InformationDatabase();
  Future<List<Information>>? futureInformationList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInformationFromDatabase();
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
          child: FutureBuilder<List<Information>>(
            future: futureInformationList,
            builder: (context, snapshot){
              if(snapshot.hasError) return Center(child: Text("Load dữ liệu lỗi"),);
              if(!snapshot.hasData) return Center( child: CircularProgressIndicator(),);
              List<Information> informationList = snapshot.data!;
              return ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
                  itemCount: informationList.length,
                  itemBuilder: (context, index){
                    Information information = informationList[index];
                    return Container(
                      child: Row(
                        children: [
                          Text(information.so_bi_tru.toString()),
                          Text("-"),
                          Text(information.so_tru.toString()),
                          Text("="),
                          Text(information.ket_qua.toString()),
                        ],
                      ),
                    );

                  },
              );
            },
          )
      ),
    );
  }

  getInformationFromDatabase(){
    futureInformationList = db.fetchAll();
  }
}
