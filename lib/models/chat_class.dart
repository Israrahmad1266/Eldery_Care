class ChatClass {
  String? chatid;

  List<String>? participants;

  ChatClass({this.chatid, this.participants});

  ChatClass.fromMap(Map<String, dynamic> map) {
    chatid = map['chatid'];
    participants = map['participants'];
  }

  Map<String, dynamic> toMap() {
    return {
      'chatid': chatid,
      'participants': participants,
    };
  }
}
