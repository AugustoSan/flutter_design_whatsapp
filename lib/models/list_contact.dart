import 'dart:convert';

import 'package:flutter_design_whatsapp/models/models.dart';

class ListContact {
  ListContact({
    required this.contact,
  });

  Contact contact;

  factory ListContact.fromJson(String str) =>
      ListContact.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ListContact.fromMap(Map<String, dynamic> json) => ListContact(
        contact: Contact.fromMap(json["contact"]),
      );

  Map<String, dynamic> toMap() => {
        "contact": contact.toMap(),
      };
}
