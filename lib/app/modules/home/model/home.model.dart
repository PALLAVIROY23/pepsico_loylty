// To parse this JSON data, do
//
//     final retailerProfiler = retailerProfilerFromJson(jsonString);

import 'dart:convert';

RetailerProfiler retailerProfilerFromJson(String str) => RetailerProfiler.fromJson(json.decode(str));

String retailerProfilerToJson(RetailerProfiler data) => json.encode(data.toJson());

class RetailerProfiler {
  Data? data;
  bool? success;
  String? message;

  RetailerProfiler({
    this.data,
    this.success,
    this.message,
  });

  factory RetailerProfiler.fromJson(Map<String, dynamic> json) => RetailerProfiler(
    data: json["data"] == null ? null : Data.fromJson(json["data"]??{}),
    success: json["success"]??false,
    message: json["message"]??"",
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "success": success,
    "message": message,
  };
}

class Data {
  int? id;
  String? type;
  String? title;
  String? name;
  String? email;
  int? number;
  String? code;
  dynamic emailVerifiedAt;
  dynamic password;
  dynamic passwordChangedAt;
  int? active;
  dynamic timezone;
  dynamic lastLoginAt;
  String? lastLoginIp;
  int? toBeLoggedOut;
  dynamic provider;
  dynamic providerId;
  dynamic rememberToken;
  dynamic businessCode;
  dynamic internalCode;
  dynamic flag;
  dynamic testRecord;
  String? pancard;
  DateTime? dob;
  int? isPan;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  UserProfile? userProfile;
  List<RetailerDistributor>? retailerDistributors;

  Data({
    this.id,
    this.type,
    this.title,
    this.name,
    this.email,
    this.number,
    this.code,
    this.emailVerifiedAt,
    this.password,
    this.passwordChangedAt,
    this.active,
    this.timezone,
    this.lastLoginAt,
    this.lastLoginIp,
    this.toBeLoggedOut,
    this.provider,
    this.providerId,
    this.rememberToken,
    this.businessCode,
    this.internalCode,
    this.flag,
    this.testRecord,
    this.pancard,
    this.dob,
    this.isPan,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.userProfile,
    this.retailerDistributors,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    type: json["type"],
    title: json["title"],
    name: json["name"],
    email: json["email"],
    number: json["number"],
    code: json["code"],
    emailVerifiedAt: json["email_verified_at"],
    password: json["password"],
    passwordChangedAt: json["password_changed_at"],
    active: json["active"],
    timezone: json["timezone"],
    lastLoginAt: json["last_login_at"],
    lastLoginIp: json["last_login_ip"],
    toBeLoggedOut: json["to_be_logged_out"],
    provider: json["provider"],
    providerId: json["provider_id"],
    rememberToken: json["remember_token"],
    businessCode: json["business_code"],
    internalCode: json["internal_code"],
    flag: json["flag"],
    testRecord: json["testRecord"],
    pancard: json["pancard"],
    dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
    isPan: json["isPan"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    userProfile: json["user_profile"] == null ? null : UserProfile.fromJson(json["user_profile"]),
    retailerDistributors: json["retailer_distributors"] == null ? [] : List<RetailerDistributor>.from(json["retailer_distributors"]!.map((x) => RetailerDistributor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "title": title,
    "name": name,
    "email": email,
    "number": number,
    "code": code,
    "email_verified_at": emailVerifiedAt,
    "password": password,
    "password_changed_at": passwordChangedAt,
    "active": active,
    "timezone": timezone,
    "last_login_at": lastLoginAt,
    "last_login_ip": lastLoginIp,
    "to_be_logged_out": toBeLoggedOut,
    "provider": provider,
    "provider_id": providerId,
    "remember_token": rememberToken,
    "business_code": businessCode,
    "internal_code": internalCode,
    "flag": flag,
    "testRecord": testRecord,
    "pancard": pancard,
    "dob":dob==null?null: "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
    "isPan": isPan,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "user_profile": userProfile?.toJson(),
    "retailer_distributors": retailerDistributors == null ? [] : List<dynamic>.from(retailerDistributors!.map((x) => x.toJson())),
  };
}

class RetailerDistributor {
  int? id;
  int? userId;
  String? code;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  RetailerDistributor({
    this.id,
    this.userId,
    this.code,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory RetailerDistributor.fromJson(Map<String, dynamic> json) => RetailerDistributor(
    id: json["id"],
    userId: json["user_id"],
    code: json["code"],
    status: json["status"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "code": code,
    "status": status,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class UserProfile {
  int id;
  int userId;
  int zoneId;
  int areaId;
  String gender;
  String channel;
  String outletClass;
  String shopName;
  String avatar;
  String marketArea;
  String address;
  String address2;
  String address3;
  String town;
  String city;
  String state;
  int pincode;
  int points;
  DateTime? enrollmentDate;
  dynamic sapCode;
  int? status;
  int? createdBy;
  int? updatedBy;
  dynamic mgrId;
  int? asmId;
  int? stlId;
  int? channelMId;
  int? ctlId;
  int? zvpId;
  int? zmeId;
  int? gsmId;
  int? termsOfService;
  int? digitalProduct;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;

  UserProfile({
 required    this.id,
    required this.userId,
    required    this.zoneId,required
    this.areaId,required
    this.gender,required
    this.channel,required
    this.outletClass,required
    this.shopName,required
    this.avatar,required
    this.marketArea,required
    this.address,required
    this.address2,required
    this.address3,required
    this.town,required
    this.city,required
    this.state,required
    this.pincode,
    required    this.points,
    this.enrollmentDate,
    this.sapCode,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.mgrId,
    this.asmId,
    this.stlId,
    this.channelMId,
    this.ctlId,
    this.zvpId,
    this.zmeId,
    this.gsmId,
    this.termsOfService,
    this.digitalProduct,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
    id: json["id"]??0,
    userId: json["user_id"]??0,
    zoneId: json["zone_id"]??0,
    areaId: json["area_id"]??0,
    gender: json["gender"]??"",
    channel: json["channel"]??"",
    outletClass: json["outlet_class"]??"",
    shopName: json["shop_name"]??"",
    avatar: json["avatar"]??"",
    marketArea: json["market_area"]??"",
    address: json["address"]??"",
    address2: json["address_2"]??"",
    address3: json["address_3"]??"",
    town: json["town"]??'',
    city: json["city"]??"",
    state: json["state"]??"",
    pincode: json["pincode"]??0,
    points: json["points"]??"",
    enrollmentDate: json["enrollment_date"] == null ? null : DateTime.parse(json["enrollment_date"]),
    sapCode: json["sap_code"],
    status: json["status"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    mgrId: json["mgr_id"],
    asmId: json["asm_id"],
    stlId: json["stl_id"],
    channelMId: json["channelM_id"],
    ctlId: json["ctl_id"],
    zvpId: json["zvp_id"],
    zmeId: json["zme_id"],
    gsmId: json["gsm_id"],
    termsOfService: json["terms_of_service"],
    digitalProduct: json["digital_product"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "zone_id": zoneId,
    "area_id": areaId,
    "gender": gender,
    "channel": channel,
    "outlet_class": outletClass,
    "shop_name": shopName,
    "avatar": avatar,
    "market_area": marketArea,
    "address": address,
    "address_2": address2,
    "address_3": address3,
    "town": town,
    "city": city,
    "state": state,
    "pincode": pincode,
    "points": points,
    "enrollment_date": enrollmentDate?.toIso8601String(),
    "sap_code": sapCode,
    "status": status,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "mgr_id": mgrId,
    "asm_id": asmId,
    "stl_id": stlId,
    "channelM_id": channelMId,
    "ctl_id": ctlId,
    "zvp_id": zvpId,
    "zme_id": zmeId,
    "gsm_id": gsmId,
    "terms_of_service": termsOfService,
    "digital_product": digitalProduct,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
  };
}
