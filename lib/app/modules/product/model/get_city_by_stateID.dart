// To parse this JSON data, do
//
//     final citylist = citylistFromJson(jsonString);

import 'dart:convert';

Citylist citylistFromJson(String str) => Citylist.fromJson(json.decode(str));

String citylistToJson(Citylist data) => json.encode(data.toJson());

class Citylist {
  Data? data;
  bool? success;
  String? message;

  Citylist({
    this.data,
    this.success,
    this.message,
  });

  factory Citylist.fromJson(Map<String, dynamic> json) => Citylist(
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
    success: json["success"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "success": success,
    "message": message,
  };
}

class Data {
  int? count;
  List<Row>? rows;

  Data({
    this.count,
    this.rows,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    count: json["count"],
    rows: json["rows"] == null ? [] : List<Row>.from(json["rows"]!.map((x) => Row.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "rows": rows == null ? [] : List<dynamic>.from(rows!.map((x) => x.toJson())),
  };
}

class Row {
  int? id;
  int? stateId;
  String? name;
  int? status;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic cityId;

  Row({
    this.id,
    this.stateId,
    this.name,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.cityId,
  });

  factory Row.fromJson(Map<String, dynamic> json) => Row(
    id: json["id"],
    stateId: json["state_id"],
    name: json["name"],
    status: json["status"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    cityId: json["city_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "state_id": stateId,
    "name": name,
    "status": status,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "city_id": cityId,
  };
}
