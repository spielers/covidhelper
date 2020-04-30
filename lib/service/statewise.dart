class Andhra {
  List<StateWise> stateWise;

  Andhra({this.stateWise});

  Andhra.fromJson(Map<String, dynamic> json) {
    if (json['districtData'] != null) {
      stateWise = new List<StateWise>();
      json['districtData'].forEach((v) {
        stateWise.add(new StateWise.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.stateWise != null) {
      data['districtData'] = this.stateWise.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StateWise {
//  String deaths;
  //String discharged;
 // String foreignNational;
 // String indianNational;
 // String state;
  String district;
  String confirmed;

  StateWise(
      {//this.deaths,
     // this.discharged,
    //  this.foreignNational,
      //this.indianNational,
     // this.state,
      this.district,
      this.confirmed});

  StateWise.fromJson(Map<String, dynamic> json) {
   // deaths = json['Deaths'];
   // discharged = json['Discharged'];
   // foreignNational = json['ForeignNational'];
   // indianNational = json['IndianNational'];
    //state = json['State'];
    district =json['district'];
    confirmed = json['confirmed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
   // data['Deaths'] = this.deaths;
   // data['Discharged'] = this.discharged;
    //data['ForeignNational'] = this.foreignNational;
   // data['IndianNational'] = this.indianNational;
    //data['State'] = this.state;
    data['district'] =this.district;
    data['confirmed'] =this.confirmed;
    return data;
  }
}