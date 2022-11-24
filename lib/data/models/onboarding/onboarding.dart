// To parse this JSON data, do
//
//     final metaDataModels = metaDataModelsFromJson(jsonString);

import 'dart:convert';

MetaDataModels metaDataModelsFromJson(String str) =>
    MetaDataModels.fromJson(json.decode(str));

String metaDataModelsToJson(MetaDataModels data) => json.encode(data.toJson());

class MetaDataModels {
  MetaDataModels({
    this.image,
    this.title,
    this.description,
  });

  String? image;
  String? title;
  String? description;

  factory MetaDataModels.fromJson(Map<String, dynamic> json) => MetaDataModels(
        image: json["image"],
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "title": title,
        "description": description,
      };
}
