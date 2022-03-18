import 'package:oop_practice_1/document/document.dart';

class Magazine extends Document {

  int? publishingNumber; 
  int? publishingMonth;

  Magazine({required String? id, required String? publishingCompanyName, required int? releaseYear, this.publishingNumber, this.publishingMonth}) : super(id: id, publishingCompanyName: publishingCompanyName, releaseYear: releaseYear); 
  
  @override
  void getInformation() {
    // TODO: implement getInformation
    super.getInformation();
    print("Số phát hành: ${this.publishingNumber}" + "\n" + "Tháng phát hành: ${this.publishingMonth}" );
  }

}