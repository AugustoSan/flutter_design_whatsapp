import 'dart:convert';

class Message {
  Message({
    required this.idMessage,
    required this.message,
    required this.date,
  });

  int idMessage;
  String message;
  String date;

  factory Message.fromJson(String str) => Message.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Message.fromMap(Map<String, dynamic> json) => Message(
        idMessage: json["idMessage"],
        message: json["message"],
        date: json["date"],
      );

  Map<String, dynamic> toMap() => {
        "idMessage": idMessage,
        "message": message,
        "date": date,
      };
}
