// To parse this JSON data, do
//
//     final getalluser10 = getalluser10FromJson(jsonString);

import 'dart:convert';

Getalluser10 getalluser10FromJson(String str) => Getalluser10.fromJson(json.decode(str));

String getalluser10ToJson(Getalluser10 data) => json.encode(data.toJson());

class Getalluser10 {
    bool success;
    String message;
    List<Datum> data;

    Getalluser10({
        required this.success,
        required this.message,
        required this.data,
    });

    factory Getalluser10.fromJson(Map<String, dynamic> json) => Getalluser10(
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
    List<Transaction> transaction;
    String id;
    String signName;
    int signPhone;
    String signEmail;
    bool block;
    double wallet;
    int v;

    Datum({
        required this.transaction,
        required this.id,
        required this.signName,
        required this.signPhone,
        required this.signEmail,
        required this.block,
        required this.wallet,
        required this.v,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        transaction: List<Transaction>.from(json["transaction"].map((x) => Transaction.fromJson(x))),
        id: json["_id"],
        signName: json["signName"],
        signPhone: json["signPhone"],
        signEmail: json["signEmail"],
        block: json["block"],
        wallet: json["wallet"]?.toDouble(),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "transaction": List<dynamic>.from(transaction.map((x) => x.toJson())),
        "_id": id,
        "signName": signName,
        "signPhone": signPhone,
        "signEmail": signEmail,
        "block": block,
        "wallet": wallet,
        "__v": v,
    };
}

class Transaction {
    double amount;
    DateTime date;

    Transaction({
        required this.amount,
        required this.date,
    });

    factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        amount: json["amount"]?.toDouble(),
        date: DateTime.parse(json["date"]),
    );

    Map<String, dynamic> toJson() => {
        "amount": amount,
        "date": date.toIso8601String(),
    };
}
