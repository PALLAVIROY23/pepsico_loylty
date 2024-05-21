
import 'dart:convert';

Getallzonewithdata getallzonewithdataFromJson(String str) => Getallzonewithdata.fromJson(json.decode(str));

String getallzonewithdataToJson(Getallzonewithdata data) => json.encode(data.toJson());

class Getallzonewithdata {
  Data? data;
  bool? success;
  String? message;

  Getallzonewithdata({
    this.data,
    this.success,
    this.message,
  });

  factory Getallzonewithdata.fromJson(Map<String, dynamic> json) => Getallzonewithdata(
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
  String? name;
  String? region;
  int? status;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<Row>? areas;
  int? zoneId;

  Row({
    this.id,
    this.name,
    this.region,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.areas,
    this.zoneId,
  });

  factory Row.fromJson(Map<String, dynamic> json) => Row(
    id: json["id"],
    name: json["name"],
    region: json["region"],
    status: json["status"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    areas: json["areas"] == null ? [] : List<Row>.from(json["areas"]!.map((x) => Row.fromJson(x))),
    zoneId: json["zone_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "region": region,
    "status": status,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "areas": areas == null ? [] : List<dynamic>.from(areas!.map((x) => x.toJson())),
    "zone_id": zoneId,
  };
}
