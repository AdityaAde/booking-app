// To parse this JSON data, do
//
//     final onboarding = onboardingFromJson(jsonString);

import 'dart:convert';

Onboarding onboardingFromJson(String str) =>
    Onboarding.fromJson(json.decode(str));

String onboardingToJson(Onboarding data) => json.encode(data.toJson());

class Onboarding {
  Onboarding({
    this.image,
    this.title,
    this.description,
  });

  String? image;
  String? title;
  String? description;

  factory Onboarding.fromJson(Map<String, dynamic> json) => Onboarding(
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
