class VersesModel {
  int? id;
  String? verseKey;
  String? textUthmani;

  VersesModel({this.id, this.verseKey, this.textUthmani});

  VersesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    verseKey = json['verse_key'];
    textUthmani = json['text_uthmani'];
  }
}
