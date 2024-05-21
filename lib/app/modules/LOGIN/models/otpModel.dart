// To parse this JSON data, do
//
//     final verifyOtpModel = verifyOtpModelFromJson(jsonString);

import 'dart:convert';

VerifyOtpModel verifyOtpModelFromJson(String str) => VerifyOtpModel.fromJson(json.decode(str));

String verifyOtpModelToJson(VerifyOtpModel data) => json.encode(data.toJson());

class VerifyOtpModel {
  bool? success;
  Data? data;
  Image? image;
  String? accessToken;
  String? refreshToken;
  String? message;

  VerifyOtpModel({
    this.success,
    this.data,
    this.image,
    this.accessToken,
    this.refreshToken,
    this.message,
  });

  factory VerifyOtpModel.fromJson(Map<String, dynamic> json) => VerifyOtpModel(
    success: json["success"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
    image: json["image"] == null ? null : Image.fromJson(json["image"]),
    accessToken: json["accessToken"],
    refreshToken: json["refreshToken"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data?.toJson(),
    "image": image?.toJson(),
    "accessToken": accessToken,
    "refreshToken": refreshToken,
    "message": message,
  };
}

class Data {
  int? id;
  String? type;
  dynamic title;
  String? name;
  dynamic email;
  int? number;
  dynamic code;
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
  int? flag;
  dynamic testRecord;
  dynamic pancard;
  dynamic dob;
  int? isPan;
  int? isPanVerify;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  UserProfile? userProfile;
  List<dynamic>? retailers;

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
    this.isPanVerify,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.userProfile,
    this.retailers,
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
    dob: json["dob"],
    isPan: json["isPan"],
    isPanVerify: json["isPanVerify"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    userProfile: json["user_profile"] == null ? null : UserProfile.fromJson(json["user_profile"]),
    retailers: json["retailers"] == null ? [] : List<dynamic>.from(json["retailers"]!.map((x) => x)),
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
    "dob": dob,
    "isPan": isPan,
    "isPanVerify": isPanVerify,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "user_profile": userProfile?.toJson(),
    "retailers": retailers == null ? [] : List<dynamic>.from(retailers!.map((x) => x)),
  };
}

class UserProfile {
  int? id;
  int? userId;
  int? zoneId;
  int? areaId;
  int? cityId;
  dynamic retailerId;
  dynamic distributorId;
  dynamic gender;
  dynamic channel;
  dynamic outletClass;
  String? shopName;
  dynamic avatar;
  dynamic marketArea;
  dynamic address;
  dynamic address2;
  dynamic address3;
  dynamic town;
  String? city;
  String? state;
  dynamic pincode;
  int? points;
  DateTime? enrollmentDate;
  dynamic sapCode;
  int? status;
  dynamic createdBy;
  dynamic updatedBy;
  dynamic mgrId;
  dynamic stlId;
  dynamic channelMId;
  dynamic ctlId;
  dynamic zvpId;
  dynamic zmeId;
  dynamic gsmId;
  int? cooId;
  int? mugmId;
  int? hosId;
  int? asmId;
  dynamic ceId;
  dynamic psrId;
  dynamic aseId;
  dynamic meId;
  dynamic smId;
  dynamic ammdId;
  dynamic termsOfService;
  int? digitalProduct;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  List<dynamic>? distributorMappings;
  List<UserClub>? userClub;

  UserProfile({
    this.id,
    this.userId,
    this.zoneId,
    this.areaId,
    this.cityId,
    this.retailerId,
    this.distributorId,
    this.gender,
    this.channel,
    this.outletClass,
    this.shopName,
    this.avatar,
    this.marketArea,
    this.address,
    this.address2,
    this.address3,
    this.town,
    this.city,
    this.state,
    this.pincode,
    this.points,
    this.enrollmentDate,
    this.sapCode,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.mgrId,
    this.stlId,
    this.channelMId,
    this.ctlId,
    this.zvpId,
    this.zmeId,
    this.gsmId,
    this.cooId,
    this.mugmId,
    this.hosId,
    this.asmId,
    this.ceId,
    this.psrId,
    this.aseId,
    this.meId,
    this.smId,
    this.ammdId,
    this.termsOfService,
    this.digitalProduct,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.distributorMappings,
    this.userClub,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
    id: json["id"],
    userId: json["user_id"],
    zoneId: json["zone_id"],
    areaId: json["area_id"],
    cityId: json["city_id"],
    retailerId: json["retailer_id"],
    distributorId: json["distributor_id"],
    gender: json["gender"],
    channel: json["channel"],
    outletClass: json["outlet_class"],
    shopName: json["shop_name"],
    avatar: json["avatar"],
    marketArea: json["market_area"],
    address: json["address"],
    address2: json["address_2"],
    address3: json["address_3"],
    town: json["town"],
    city: json["city"],
    state: json["state"],
    pincode: json["pincode"],
    points: json["points"],
    enrollmentDate: json["enrollment_date"] == null ? null : DateTime.parse(json["enrollment_date"]),
    sapCode: json["sap_code"],
    status: json["status"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    mgrId: json["mgr_id"],
    stlId: json["stl_id"],
    channelMId: json["channelM_id"],
    ctlId: json["ctl_id"],
    zvpId: json["zvp_id"],
    zmeId: json["zme_id"],
    gsmId: json["gsm_id"],
    cooId: json["coo_id"],
    mugmId: json["mugm_id"],
    hosId: json["hos_id"],
    asmId: json["asm_id"],
    ceId: json["ce_id"],
    psrId: json["psr_id"],
    aseId: json["ase_id"],
    meId: json["me_id"],
    smId: json["sm_id"],
    ammdId: json["ammd_id"],
    termsOfService: json["terms_of_service"],
    digitalProduct: json["digital_product"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    distributorMappings: json["distributor_mappings"] == null ? [] : List<dynamic>.from(json["distributor_mappings"]!.map((x) => x)),
    userClub: json["userClub"] == null ? [] : List<UserClub>.from(json["userClub"]!.map((x) => UserClub.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "zone_id": zoneId,
    "area_id": areaId,
    "city_id": cityId,
    "retailer_id": retailerId,
    "distributor_id": distributorId,
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
    "stl_id": stlId,
    "channelM_id": channelMId,
    "ctl_id": ctlId,
    "zvp_id": zvpId,
    "zme_id": zmeId,
    "gsm_id": gsmId,
    "coo_id": cooId,
    "mugm_id": mugmId,
    "hos_id": hosId,
    "asm_id": asmId,
    "ce_id": ceId,
    "psr_id": psrId,
    "ase_id": aseId,
    "me_id": meId,
    "sm_id": smId,
    "ammd_id": ammdId,
    "terms_of_service": termsOfService,
    "digital_product": digitalProduct,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "distributor_mappings": distributorMappings == null ? [] : List<dynamic>.from(distributorMappings!.map((x) => x)),
    "userClub": userClub == null ? [] : List<dynamic>.from(userClub!.map((x) => x.toJson())),
  };
}

class UserClub {
  int? id;
  int? userId;
  String? type;
  int? status;
  int? createdBy;
  int? modifiedBy;
  dynamic createdAt;
  dynamic updatedAt;

  UserClub({
    this.id,
    this.userId,
    this.type,
    this.status,
    this.createdBy,
    this.modifiedBy,
    this.createdAt,
    this.updatedAt,
  });

  factory UserClub.fromJson(Map<String, dynamic> json) => UserClub(
    id: json["id"],
    userId: json["user_id"],
    type: json["type"],
    status: json["status"],
    createdBy: json["created_by"],
    modifiedBy: json["modified_by"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "type": type,
    "status": status,
    "created_by": createdBy,
    "modified_by": modifiedBy,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}

class Image {
  String? url;

  Image({
    this.url,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
  };
}
