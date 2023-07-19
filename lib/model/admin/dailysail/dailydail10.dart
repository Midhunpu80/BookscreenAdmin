// To parse this JSON data, do
//
//     final dailysail10 = dailysail10FromJson(jsonString);

import 'dart:convert';

Dailysail10 dailysail10FromJson(String str) => Dailysail10.fromJson(json.decode(str));

String dailysail10ToJson(Dailysail10 data) => json.encode(data.toJson());

class Dailysail10 {
    bool success;
    String message;
    Data data;

    Dailysail10({
        required this.success,
        required this.message,
        required this.data,
    });

    factory Dailysail10.fromJson(Map<String, dynamic> json) => Dailysail10(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    int total;
    int userCount;
    int ownerCount;
    int expiredCount;
    int activeCount;
    int movieCount;

    Data({
        required this.total,
        required this.userCount,
        required this.ownerCount,
        required this.expiredCount,
        required this.activeCount,
        required this.movieCount,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        total: json["total"],
        userCount: json["userCount"],
        ownerCount: json["ownerCount"],
        expiredCount: json["expiredCount"],
        activeCount: json["activeCount"],
        movieCount: json["movieCount"],
    );

    Map<String, dynamic> toJson() => {
        "total": total,
        "userCount": userCount,
        "ownerCount": ownerCount,
        "expiredCount": expiredCount,
        "activeCount": activeCount,
        "movieCount": movieCount,
    };
}
