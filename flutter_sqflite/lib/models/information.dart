class Information {
  int? id;
  int? so_bi_tru;
  int? so_tru;
  int? ket_qua;

  Information({ required this.id, required this.so_bi_tru, required this.so_tru, required this.ket_qua});


  Information.fromJson(Map json):
      this.id = json['id'],
      this.so_bi_tru = json['so_bi_tru'],
      this.so_tru = json['so_tru'],
      this.ket_qua = json['ket_qua'];

  toJson(){
    return {
      'id': this.id,
      'so_bi_tru': this.so_bi_tru,
      'so_tru': this.so_tru,
      'ket_qua': this.ket_qua
    };
  }



}