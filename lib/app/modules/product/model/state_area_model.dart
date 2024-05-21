// To parse this JSON data, do
//
//     final stateArea = stateAreaFromJson(jsonString);

import 'dart:convert';

StateArea stateAreaFromJson(String str) => StateArea.fromJson(json.decode(str));

String stateAreaToJson(StateArea data) => json.encode(data.toJson());

class StateArea {
  Data? data;
  bool? success;
  String? message;

  StateArea({
    this.data,
    this.success,
    this.message,
  });

  factory StateArea.fromJson(Map<String, dynamic> json) => StateArea(
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
  int count;
  List<Row> rows;

  Data({
    this.count = 0,
    this.rows = const [],
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        count: json["count"] ?? 0,
        rows: json["rows"] == null
            ? []
            : List<Row>.from(json["rows"]!.map((x) => Row.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "rows": rows == null
            ? []
            : List<dynamic>.from(rows!.map((x) => x.toJson())),
      };
}

class Row {
  int? id;
  int? zoneId;
  String? name;
  int? status;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  Row? zone;
  String? region;

  Row({
    this.id,
    this.zoneId,
    this.name,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.zone,
    this.region,
  });

  factory Row.fromJson(Map<String, dynamic> json) => Row(
        id: json["id"],
        zoneId: json["zone_id"],
        name: json["name"],
        status: json["status"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        zone: json["zone"] == null ? null : Row.fromJson(json["zone"]),
        region: json["region"],
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
        "zone": zone?.toJson(),
        "region": region,
      };
}
