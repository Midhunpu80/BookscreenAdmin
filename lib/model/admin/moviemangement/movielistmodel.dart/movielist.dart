// To parse this JSON data, do
//
//     final movielist10 = movielist10FromJson(jsonString);

import 'dart:convert';

Movielist10 movielist10FromJson(String str) => Movielist10.fromJson(json.decode(str));

String movielist10ToJson(Movielist10 data) => json.encode(data.toJson());

class Movielist10 {
    bool success;
    String message;
    List<Datum> data;

    Movielist10({
        required this.success,
        required this.message,
        required this.data,
    });

    factory Movielist10.fromJson(Map<String, dynamic> json) => Movielist10(
        success: json["success"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    String id;
    int? movieId;
    String title;
    String language;
    String releaseDate;
    String image;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    Datum({
        required this.id,
        this.movieId,
        required this.title,
        required this.language,
        required this.releaseDate,
        required this.image,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        movieId: json["movieId"],
        title: json["title"],
        language: json["language"],
        releaseDate: json["releaseDate"],
        image: json["image"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "movieId": movieId,
        "title": title,
        "language": language,
        "releaseDate": releaseDate,
        "image": image,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}
