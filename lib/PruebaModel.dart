// To parse this JSON data, do
//
//     final pruebaModel = pruebaModelFromJson(jsonString);

import 'dart:convert';

PruebaModel pruebaModelFromJson(String str) => PruebaModel.fromJson(json.decode(str));

String pruebaModelToJson(PruebaModel data) => json.encode(data.toJson());

class PruebaModel {
    String id;
    String name;
    int score;

    PruebaModel({
        this.id,
        this.name,
        this.score,
    });

    factory PruebaModel.fromJson(Map<String, dynamic> json) => PruebaModel(
        id: json["id"],
        name: json["name"],
        score: json["score"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "score": score,
    };
}
