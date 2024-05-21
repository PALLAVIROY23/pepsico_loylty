// To parse this JSON data, do
//
//     final redeemCatalogue = redeemCatalogueFromJson(jsonString);

import 'dart:convert';

RedeemCatalogue redeemCatalogueFromJson(String str) => RedeemCatalogue.fromJson(json.decode(str));

String redeemCatalogueToJson(RedeemCatalogue data) => json.encode(data.toJson());

class RedeemCatalogue {
  CatalogueData? data;
  bool? success;
  String? message;

  RedeemCatalogue({
    this.data,
    this.success,
    this.message,
  });

  factory RedeemCatalogue.fromJson(Map<String, dynamic> json) => RedeemCatalogue(
    data: json["data"] == null ? null : CatalogueData.fromJson(json["data"]),
    success: json["success"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "success": success,
    "message": message,
  };
}

class CatalogueData {
  int? count;
  List<Row>? rows;
  int? maxPoints;

  CatalogueData({
    this.count,
    this.rows,
    this.maxPoints,
  });

  factory CatalogueData.fromJson(Map<String, dynamic> json) => CatalogueData(
    count: json["count"]??0,
    rows: json["rows"] == null ? [] : List<Row>.from(json["rows"]!.map((x) => Row.fromJson(x))),
    maxPoints: json["maxPoints"]??0,
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "rows": rows == null ? [] : List<dynamic>.from(rows!.map((x) => x.toJson())),
    "maxPoints": maxPoints,
  };
}

class Row {
  int? id;
  int? userId;
  int? categoryId;
  int? subCategoryId;
  String? name;
  String? slug;
  String? brandName;
  String? sku;
  String? specification;
  String? mainImage;
  String? shortDescription;
  String? longDescription;
  int? rating;
  int? mrp;
  int? discount;
  int? cost;
  int? pricePoint;
  int? quantity;
  int? ranking;
  DateTime? startDate;
  DateTime? endDate;
  int? qtyPerOrderLimit;
  int? supplierId;
  int? status;
  Type? type;
  int? gst;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  int? rank;
  Category? category;
  Category? subcategory;
  Supplier? supplier;
  List<dynamic>? productImages;

  Row({
    this.id,
    this.userId,
    this.categoryId,
    this.subCategoryId,
    this.name,
    this.slug,
    this.brandName,
    this.sku,
    this.specification,
    this.mainImage,
    this.shortDescription,
    this.longDescription,
    this.rating,
    this.mrp,
    this.discount,
    this.cost,
    this.pricePoint,
    this.quantity,
    this.ranking,
    this.startDate,
    this.endDate,
    this.qtyPerOrderLimit,
    this.supplierId,
    this.status,
    this.type,
    this.gst,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.rank,
    this.category,
    this.subcategory,
    this.supplier,
    this.productImages,
  });

  factory Row.fromJson(Map<String, dynamic> json) => Row(
    id: json["id"],
    userId: json["user_id"],
    categoryId: json["category_id"],
    subCategoryId: json["sub_category_id"],
    name: json["name"],
    slug: json["slug"],
    brandName: json["brand_name"],
    sku: json["sku"],
    specification: json["specification"],
    mainImage: json["main_image"],
    shortDescription: json["short_description"],
    longDescription: json["long_description"],
    rating: json["rating"],
    mrp: json["mrp"],
    discount: json["discount"],
    cost: json["cost"],
    pricePoint: json["price_point"],
    quantity: json["quantity"],
    ranking: json["ranking"],
    startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
    endDate: json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
    qtyPerOrderLimit: json["qty_per_order_limit"],
    supplierId: json["supplier_id"],
    status: json["status"],
    type: typeValues.map[json["type"]]!,
    gst: json["gst"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    rank: json["rank"],
    category: json["category"] == null ? null : Category.fromJson(json["category"]),
    subcategory: json["subcategory"] == null ? null : Category.fromJson(json["subcategory"]),
    supplier: json["supplier"] == null ? null : Supplier.fromJson(json["supplier"]),
    productImages: json["product_images"] == null ? [] : List<dynamic>.from(json["product_images"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "category_id": categoryId,
    "sub_category_id": subCategoryId,
    "name": name,
    "slug": slug,
    "brand_name": brandName,
    "sku": sku,
    "specification": specification,
    "main_image": mainImage,
    "short_description": shortDescription,
    "long_description": longDescription,
    "rating": rating,
    "mrp": mrp,
    "discount": discount,
    "cost": cost,
    "price_point": pricePoint,
    "quantity": quantity,
    "ranking": ranking,
    "start_date": startDate?.toIso8601String(),
    "end_date": endDate?.toIso8601String(),
    "qty_per_order_limit": qtyPerOrderLimit,
    "supplier_id": supplierId,
    "status": status,
    "type": typeValues.reverse[type],
    "gst": gst,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "rank": rank,
    "category": category?.toJson(),
    "subcategory": subcategory?.toJson(),
    "supplier": supplier?.toJson(),
    "product_images": productImages == null ? [] : List<dynamic>.from(productImages!.map((x) => x)),
  };
}

class Category {
  int? id;
  String? name;
  String? slug;
  String? description;
  String? image;

  Category({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.image,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    description: json["description"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "description": description,
    "image": image,
  };
}

class Supplier {
  int? id;
  String? name;
  String? companyName;

  Supplier({
    this.id,
    this.name,
    this.companyName,
  });

  factory Supplier.fromJson(Map<String, dynamic> json) => Supplier(
    id: json["id"],
    name: json["name"],
    companyName: json["company_name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "company_name": companyName,
  };
}

enum Type {
  DIGITAL,
  PHYSICAL
}

final typeValues = EnumValues({
  "digital": Type.DIGITAL,
  "physical": Type.PHYSICAL
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
