import 'package:oop_practice_1/document/document.dart';

class Book extends Document {
  String? author ; 
  int? numberOfPage;

  Book({required String? id, required String? publishingCompanyName, required int? releaseYear, this.author, this.numberOfPage}) : super(id: id, publishingCompanyName: publishingCompanyName, releaseYear: releaseYear); 

  @override
  void getInformation() {
    // TODO: implement getInformation
    super.getInformation();
    print("Tên tác giả: ${this.author}" + "\n" + "Số trang: ${this.numberOfPage}");

  }

}