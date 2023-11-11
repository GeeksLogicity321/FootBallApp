class PlayersModel {
  String? firstName;
  String? lastName;
  String? id;
  String? positionName;
  int? position;
  String? positionFormation;
  int? shirtNumber;

  PlayersModel(
      {this.firstName,
      this.lastName,
      this.id,
      this.positionName,
      this.position,
      this.positionFormation,
      this.shirtNumber});

  PlayersModel.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    id = json['id'];
    positionName = json['position_name'];
    position = json['position'];
    positionFormation = json['position_formation'];
    shirtNumber = json['shirt_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['id'] = id;
    data['position_name'] = positionName;
    data['position'] = position;
    data['position_formation'] = positionFormation;
    data['shirt_number'] = shirtNumber;
    return data;
  }
}

class TeamDetailModel {
  String? id;
  String? formation;
  String? name;
  String? logo;

  TeamDetailModel({this.id, this.formation, this.name, this.logo});

  TeamDetailModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    formation = json['formation'];
    name = json['name'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['formation'] = formation;
    data['name'] = name;
    data['logo'] = logo;
    return data;
  }
}

class CoachModel {
  String? firstName;
  String? lastName;
  String? id;

  CoachModel({this.firstName, this.lastName, this.id});

  CoachModel.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['id'] = id;
    return data;
  }
}
