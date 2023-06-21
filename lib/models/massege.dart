class MessageModel {
  String? sender;
  String? text;
  bool? seen;

  DateTime? createdon;

  MessageModel({this.createdon, this.seen, this.sender, this.text});

  MessageModel.fromMap(Map<String, dynamic> map) {
    sender = map['sender'];
    text = map['text'];
    seen = map['seen'];

    createdon = map['createdon'];
  }

  Map<String, dynamic> toMap() {
    return {
      'sender': sender,
      'text': text,
      'seen': seen,
      'createdon': createdon,
    };
  }
}
