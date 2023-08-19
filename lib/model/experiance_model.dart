class ExperianceModel {
  String? name;
  String? designation;
  String? email;
  String? mobile;

  ExperianceModel({this.name, this.designation, this.email, this.mobile});

  ExperianceModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    designation = json['role'];
    email = json['s_date'];
    mobile = json['e_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['role'] = this.designation;
    data['s_date'] = this.email;
    data['e_date'] = this.mobile;
    return data;
  }
}