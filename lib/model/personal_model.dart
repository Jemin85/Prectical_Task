class PersonalModel {
  String? address;
  String? dob;
  String? gender;

  PersonalModel({this.address, this.dob, this.gender});

  PersonalModel.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    dob = json['dob'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    return data;
  }
}