class Note {
  String district;
  String confirmed;

  Note(this.district,this.confirmed);

  Note.fromJson(Map<String, dynamic> json){
    district = json['district'];
    confirmed = json['confirmed'];

  }

}