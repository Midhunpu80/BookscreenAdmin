// To parse this JSON data, do
//
//     final montsail10 = montsail10FromJson(jsonString);

import 'dart:convert';

Montsail10 montsail10FromJson(String str) => Montsail10.fromJson(json.decode(str));

String montsail10ToJson(Montsail10 data) => json.encode(data.toJson());

class Montsail10 {
    bool success;
    String message;
    List<double> data;

    Montsail10({
        required this.success,
        required this.message,
        required this.data,
    });

    factory Montsail10.fromJson(Map<String, dynamic> json) => Montsail10(
        success: json["success"],
        message: json["message"],
        data: List<double>.from(json["data"].map((x) => x?.toDouble())),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x)),
    };
}
