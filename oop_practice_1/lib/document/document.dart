class Document {

  String? id; 
  String? publishingCompanyName;
  int? releaseYear;

  Document({ required this.id,required this.publishingCompanyName,required this.releaseYear});
  

  void getInformation(){
    print("Mã tài liệu: ${this.id}" + "\n" +
         "Tên nhà phát hành: ${this.publishingCompanyName}" + "\n" +
         "Năm phát hành: ${this.releaseYear}" + "\n" 
    );
  }


}