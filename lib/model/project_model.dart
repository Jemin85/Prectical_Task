class ProjectModel {
  String? name;
  String? role;
  String? team;
  String? duration;

  ProjectModel({this.name, this.role, this.team, this.duration});

  ProjectModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    role = json['role'];
    team = json['team'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['role'] = this.role;
    data['team'] = this.team;
    data['duration'] = this.duration;
    return data;
  }
}