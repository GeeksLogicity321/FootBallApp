class CommentaryModel {
  String? txt;
  int? min;
  int? iT;

  CommentaryModel({this.txt, this.min, this.iT});

  CommentaryModel.fromJson(Map<String, dynamic> json) {
    txt = json['Txt'];
    min = json['Min'];
    iT = json['IT'];
  }
}
