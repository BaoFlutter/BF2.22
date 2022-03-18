
import 'package:oop_practice_1/document/book.dart';
import 'package:oop_practice_1/document/document.dart';
import 'package:oop_practice_1/document/document_management.dart';
import 'package:oop_practice_1/document/magazine.dart';
import 'package:oop_practice_1/document/newspaper.dart';
import 'package:oop_practice_1/oop_practice_1.dart' as oop_practice_1;

void main(List<String> arguments) {
  Document sachGKToan12 = Book(id: "1", publishingCompanyName: "Bộ GDDT", releaseYear: 2019, author: "Nguyễn Xuân Sanh", numberOfPage: 300 );
  Document newSpaperCAND = Newspaper(id: "2", publishingCompanyName: "CAND", releaseYear: 2020, publishingDate: "23/12/2020" );
  Document playBoyMagazine = Magazine(id: "3", publishingCompanyName: "PlayBoy", releaseYear: 2021, publishingNumber: 1001, publishingMonth: 3 );
  DocumentManagement documentManagement = DocumentManagement(documentList: []);
  documentManagement.addDocument(document: sachGKToan12);
  documentManagement.addDocument(document: newSpaperCAND);
  documentManagement.addDocument(document: playBoyMagazine);
  documentManagement.getDocumentInformation(document: sachGKToan12);
  documentManagement.getDocumentInformation(document: newSpaperCAND);
  


}
