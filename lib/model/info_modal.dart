class InfoModel {
  String? name;
  String? designation;
  String? email;
  String? mobile;

  InfoModel({this.name, this.designation, this.email, this.mobile});

  InfoModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    designation = json['designation'];
    email = json['email'];
    mobile = json['mobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['designation'] = this.designation;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    return data;
  }
}