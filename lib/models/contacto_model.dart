import 'dart:convert';

import 'package:flutter_design_whatsapp/models/models.dart';

class Contact {
  Contact({
    required this.idContact,
    required this.name,
    required this.phone,
    required this.messages,
  });

  int idContact;
  String name;
  String phone;
  List<Message> messages;

  factory Contact.fromJson(String str) => Contact.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Contact.fromMap(Map<String, dynamic> json) => Contact(
        idContact: json["idContact"],
        name: json["name"],
        phone: json["phone"],
        messages:
            List<Message>.from(json["messages"].map((x) => Message.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "idContact": idContact,
        "name": name,
        "phone": phone,
        "messages": List<dynamic>.from(messages.map((x) => x.toMap())),
      };
}
