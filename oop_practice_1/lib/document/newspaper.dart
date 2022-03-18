import 'package:oop_practice_1/document/document.dart';

class Newspaper extends Document{
  
  String? publishingDate;

  Newspaper({required String? id, required String? publishingCompanyName, required int? releaseYear, this.publishingDate}) : super(id: id, publishingCompanyName: publishingCompanyName, releaseYear: releaseYear); 

  @override
  void getInformation() {
    // TODO: implement getInformation
    super.getInformation();
    print("Ngày phát hành: ${this.publishingDate}");
  }
}