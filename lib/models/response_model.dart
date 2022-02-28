// To parse this JSON data, do
//
//     final response = responseFromMap(jsonString);

import 'dart:convert';

import 'package:flutter_design_whatsapp/models/models.dart';

class Response {
  Response({
    required this.status,
    required this.code,
    required this.message,
    required this.data,
  });

  String status;
  int code;
  String message;
  List<ListContact> data;

  factory Response.fromJson(String str) => Response.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Response.fromMap(Map<String, dynamic> json) => Response(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        data: List<ListContact>.from(
            json["data"].map((x) => ListContact.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}
