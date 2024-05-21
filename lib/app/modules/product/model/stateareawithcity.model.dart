// To parse this JSON data, do
//
//     final stateAreaWithCity = stateAreaWithCityFromJson(jsonString);

import 'dart:convert';

StateAreaWithCity stateAreaWithCityFromJson(String str) => StateAreaWithCity.fromJson(json.decode(str));

String stateAreaWithCityToJson(StateAreaWithCity data) => json.encode(data.toJson());

class StateAreaWithCity {
  Data? data;
  bool? success;
  String? message;

  StateAreaWithCity({
    this.data,
    this.success,
    this.message,
  });

  factory StateAreaWithCity.fromJson(Map<String, dynamic> json) => StateAreaWithCity(
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
  int? zoneId;
  String? name;
  int? status;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  Row? city;
  int? stateId;
  dynamic cityId;

  Row({
    this.id,
    this.zoneId,
    this.name,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.city,
    this.stateId,
    this.cityId,
  });

  factory Row.fromJson(Map<String, dynamic> json) => Row(
    id: json["id"],
    zoneId: json["zone_id"],
    name: json["name"],
    status: json["status"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    city: json["city"] == null ? null : Row.fromJson(json["city"]),
    stateId: json["state_id"],
    cityId: json["city_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "zone_id": zoneId,
    "name": name,
    "status": status,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "city": city?.toJson(),
    "state_id": stateId,
    "city_id": cityId,
  };
}
