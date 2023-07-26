// To parse this JSON data, do
//
//     final getowner10 = getowner10FromJson(jsonString);

import 'dart:convert';

Getowner10 getowner10FromJson(String str) => Getowner10.fromJson(json.decode(str));

String getowner10ToJson(Getowner10 data) => json.encode(data.toJson());

class Getowner10 {
    bool success;
    String message;
    List<Datum> data;

    Getowner10({
        required this.success,
        required this.message,
        required this.data,
    });

    factory Getowner10.fromJson(Map<String, dynamic> json) => Getowner10(
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
    String name;
    int phone;
    String email;
    String licence;
    int adhaar;
    String location;
    int wallet;
    String images;
    String status;
    bool block;
    int v;

    Datum({
        required this.id,
        required this.name,
        required this.phone,
        required this.email,
        required this.licence,
        required this.adhaar,
        required this.location,
        required this.wallet,
        required this.images,
        required this.status,
        required this.block,
        required this.v,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        name: json["Name"],
        phone: json["Phone"],
        email: json["Email"],
        licence: json["Licence"],
        adhaar: json["Adhaar"],
        location: json["Location"],
        wallet: json["wallet"],
        images: json["images"],
        status: json["status"],
        block: json["block"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "Name": name,
        "Phone": phone,
        "Email": email,
        "Licence": licence,
        "Adhaar": adhaar,
        "Location": location,
        "wallet": wallet,
        "images": images,
        "status": status,
        "block": block,
        "__v": v,
    };
}
