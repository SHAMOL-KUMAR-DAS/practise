import 'dart:convert';

Getdatamodel getdatamodelFromJson(String str) => Getdatamodel.fromJson(json.decode(str));

String getdatamodelToJson(Getdatamodel data) => json.encode(data.toJson());

class Getdatamodel {
  Getdatamodel({
    this.result,
  });

  List<Result> result;

  factory Getdatamodel.fromJson(Map<String, dynamic> json) => Getdatamodel(
    result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    this.id,
    this.name,
    this.email,
    this.createdAt,
  });

  String id;
  String name;
  String email;
  DateTime createdAt;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "created_at": createdAt.toIso8601String(),
  };
}