// To parse this JSON data, do
//
//     final getDataModel = getDataModelFromMap(jsonString);

import 'dart:convert';

GetDataModel getDataModelFromMap(String str) => GetDataModel.fromMap(json.decode(str));

String getDataModelToMap(GetDataModel data) => json.encode(data.toMap());

class GetDataModel {
  GetDataModel({
    this.status,
    this.data,
  });

  bool status;
  Data data;

  factory GetDataModel.fromMap(Map<String, dynamic> json) => GetDataModel(
    status: json["status"] == null ? null : json["status"],
    data: json["data"] == null ? null : Data.fromMap(json["data"]),
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "data": data == null ? null : data.toMap(),
  };
}

class Data {
  Data({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  int currentPage;
  List<Datum> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  dynamic nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl;
  int to;
  int total;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    currentPage: json["current_page"] == null ? null : json["current_page"],
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
    firstPageUrl: json["first_page_url"] == null ? null : json["first_page_url"],
    from: json["from"] == null ? null : json["from"],
    lastPage: json["last_page"] == null ? null : json["last_page"],
    lastPageUrl: json["last_page_url"] == null ? null : json["last_page_url"],
    nextPageUrl: json["next_page_url"],
    path: json["path"] == null ? null : json["path"],
    perPage: json["per_page"] == null ? null : json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"] == null ? null : json["to"],
    total: json["total"] == null ? null : json["total"],
  );

  Map<String, dynamic> toMap() => {
    "current_page": currentPage == null ? null : currentPage,
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toMap())),
    "first_page_url": firstPageUrl == null ? null : firstPageUrl,
    "from": from == null ? null : from,
    "last_page": lastPage == null ? null : lastPage,
    "last_page_url": lastPageUrl == null ? null : lastPageUrl,
    "next_page_url": nextPageUrl,
    "path": path == null ? null : path,
    "per_page": perPage == null ? null : perPage,
    "prev_page_url": prevPageUrl,
    "to": to == null ? null : to,
    "total": total == null ? null : total,
  };
}

class Datum {
  Datum({
    this.id,
    this.createdBy,
    this.updatedBy,
    this.thanaId,
    this.districtId,
    this.agentId,
    this.name,
    this.mobile,
    this.pin,
    this.wallet,
    this.image,
    this.token,
    this.address,
    this.age,
    this.gender,
    this.maritalStatus,
    this.regNo,
    this.bloodGroup,
    this.serial,
    this.type,
    this.consultationType,
    this.status,
    this.addedFrom,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String createdBy;
  String updatedBy;
  String thanaId;
  String districtId;
  String agentId;
  String name;
  String mobile;
  String pin;
  String wallet;
  String image;
  dynamic token;
  String address;
  String age;
  Gender gender;
  String maritalStatus;
  String regNo;
  String bloodGroup;
  String serial;
  dynamic type;
  String consultationType;
  String status;
  AddedFrom addedFrom;
  DateTime createdAt;
  DateTime updatedAt;

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
    id: json["id"] == null ? null : json["id"],
    createdBy: json["created_by"] == null ? null : json["created_by"],
    updatedBy: json["updated_by"] == null ? null : json["updated_by"],
    thanaId: json["thana_id"] == null ? null : json["thana_id"],
    districtId: json["district_id"] == null ? null : json["district_id"],
    agentId: json["agent_id"] == null ? null : json["agent_id"],
    name: json["name"] == null ? null : json["name"],
    mobile: json["mobile"] == null ? null : json["mobile"],
    pin: json["pin"] == null ? null : json["pin"],
    wallet: json["wallet"] == null ? null : json["wallet"],
    image: json["image"] == null ? null : json["image"],
    token: json["token"],
    address: json["address"] == null ? null : json["address"],
    age: json["age"] == null ? null : json["age"],
    gender: json["gender"] == null ? null : genderValues.map[json["gender"]],
    maritalStatus: json["marital_status"] == null ? null : json["marital_status"],
    regNo: json["reg_no"] == null ? null : json["reg_no"],
    bloodGroup: json["blood_group"] == null ? null : json["blood_group"],
    serial: json["serial"] == null ? null : json["serial"],
    type: json["type"],
    consultationType: json["consultation_type"] == null ? null : json["consultation_type"],
    status: json["status"] == null ? null : json["status"],
    addedFrom: json["added_from"] == null ? null : addedFromValues.map[json["added_from"]],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "created_by": createdBy == null ? null : createdBy,
    "updated_by": updatedBy == null ? null : updatedBy,
    "thana_id": thanaId == null ? null : thanaId,
    "district_id": districtId == null ? null : districtId,
    "agent_id": agentId == null ? null : agentId,
    "name": name == null ? null : name,
    "mobile": mobile == null ? null : mobile,
    "pin": pin == null ? null : pin,
    "wallet": wallet == null ? null : wallet,
    "image": image == null ? null : image,
    "token": token,
    "address": address == null ? null : address,
    "age": age == null ? null : age,
    "gender": gender == null ? null : genderValues.reverse[gender],
    "marital_status": maritalStatus == null ? null : maritalStatus,
    "reg_no": regNo == null ? null : regNo,
    "blood_group": bloodGroup == null ? null : bloodGroup,
    "serial": serial == null ? null : serial,
    "type": type,
    "consultation_type": consultationType == null ? null : consultationType,
    "status": status == null ? null : status,
    "added_from": addedFrom == null ? null : addedFromValues.reverse[addedFrom],
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
  };
}

enum AddedFrom { AGENT }

final addedFromValues = EnumValues({
  "agent": AddedFrom.AGENT
});

enum Gender { FEMALE, MALE, GENDER_MALE }

final genderValues = EnumValues({
  "female": Gender.FEMALE,
  "Male": Gender.GENDER_MALE,
  "male": Gender.MALE
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
