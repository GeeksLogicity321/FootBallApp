class MatchesModel {
  int? round;
  String? matchId;
  String? status;
  Team2? team2;
  int? lastUpdate;
  Team2? team1;
  Score? score;
  Time? time;
  String? roundInfo;

  MatchesModel(
      {this.round,
      this.matchId,
      this.status,
      this.team2,
      this.lastUpdate,
      this.team1,
      this.score,
      this.time,
      this.roundInfo});

  MatchesModel.fromJson(Map<String, dynamic> json) {
    round = json['round'];
    matchId = json['match_id'];
    status = json['status'];
    team2 = json['team_2'] != null ? Team2.fromJson(json['team_2']) : null;
    lastUpdate = json['last_update'];
    team1 = json['team_1'] != null ? Team2.fromJson(json['team_1']) : null;
    score = json['score'] != null ? Score.fromJson(json['score']) : null;
    time = json['time'] != null ? Time.fromJson(json['time']) : null;
    roundInfo = json['round_info'];
  }
}

class Team2 {
  String? country;
  String? name;
  String? logo;
  String? id;

  Team2({this.country, this.name, this.logo, this.id});

  Team2.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    name = json['name'];
    logo = json['logo'];
    id = json['id'];
  }
}

class Score {
  FullTime? fullTime;
  FullTime? halfTime;

  Score({this.fullTime, this.halfTime});

  Score.fromJson(Map<String, dynamic> json) {
    fullTime =
        json['full_time'] != null ? FullTime.fromJson(json['full_time']) : null;
    halfTime =
        json['half_time'] != null ? FullTime.fromJson(json['half_time']) : null;
  }
}

class FullTime {
  dynamic team1;
  dynamic team2;

  FullTime({this.team1, this.team2});

  FullTime.fromJson(Map<String, dynamic> json) {
    team1 = json['team_1'];
    team2 = json['team_2'];
  }
}

class Time {
  int? scheduled;
  int? finish;
  String? timezone;
  void start;

  Time({this.scheduled, this.finish, this.timezone, this.start});

  Time.fromJson(Map<String, dynamic> json) {
    scheduled = json['scheduled'];
    finish = json['finish'];
    timezone = json['timezone'];
    start = json['start'];
  }
}
