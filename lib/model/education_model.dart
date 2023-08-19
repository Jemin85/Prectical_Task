class EducationModel {
  String? name;
  String? role;
  String? team;
  String? duration;

  EducationModel({this.name, this.role, this.team, this.duration});

  EducationModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    role = json['name'];
    team = json['board'];
    duration = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['name'] = this.role;
    data['board'] = this.team;
    data['year'] = this.duration;
    return data;
  }
}