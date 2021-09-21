// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

List<Users> usersFromJson(String str) => List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String usersToJson(List<Users> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
  Users({
    this.Name,
    this.E_Mail,
    // this.productBrand,
    // this.productImg,
    // this.quantity,
    // this.createdAt,
    // this.updatedAt,
  });

  String Name;
  String E_Mail;
  // String productBrand;
  // String productImg;
  // String quantity;
  // DateTime createdAt;
  // DateTime updatedAt;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    Name: json["product_name"],
    E_Mail: json["product_brand"],
    // productBrand: json["product_brand"],
    // productImg: json["product_img"] == null ? null : json["product_img"],
    // quantity: json["quantity"],
    // createdAt: DateTime.parse(json["created_at"]),
    // updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "product_name": Name,
    "product_brand": E_Mail,
    // "product_brand": productBrand,
    // "product_img": productImg == null ? null : productImg,
    // "quantity": quantity,
    // "created_at": createdAt.toIso8601String(),
    // "updated_at": updatedAt.toIso8601String(),
  };
}
