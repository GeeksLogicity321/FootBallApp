class EventModel {
  int? minute;
  String? event;
  String? playerName;
  int? sort;
  String? id;
  int? team;

  EventModel(
      {this.minute,
      this.event,
      this.playerName,
      this.sort,
      this.id,
      this.team});

  EventModel.fromJson(Map<String, dynamic> json) {
    minute = json['minute'];
    event = json['event'];
    playerName = json['player_name'];
    sort = json['sort'];
    id = json['id'];
    team = json['team'];
  }
}
