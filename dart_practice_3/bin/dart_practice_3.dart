

void main(List<String> arguments) {
  List<String> stringList  = ["hi", "I", "am", "a", "developer"];
  String outPut = getString(stringList: stringList);
  print(outPut);
  
}

String getString({required List<String> stringList }) {
    String stringOutput = " ";
    for(String str in stringList )
    {
      stringOutput += str + " ";
    }
    return stringOutput;
}
