// To parse this JSON data, do
//
//     final postDataModel = postDataModelFromJson(jsonString);

import 'dart:convert';

PostDataModel postDataModelFromJson(String str) => PostDataModel.fromJson(json.decode(str));

String postDataModelToJson(PostDataModel data) => json.encode(data.toJson());

class PostDataModel {
  PostDataModel({
    this.id,
    this.name,
    this.email,
    this.mobile,
    this.image,
  });

  String id;
  String name;
  String email;
  String mobile;
  String image;

  factory PostDataModel.fromJson(Map<String, dynamic> json) => PostDataModel(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    mobile: json["Mobile"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "Mobile": mobile,
    "image": image,
  };
}
