// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    bool? success;
    int? number;
    String? message;

    LoginModel({
        this.success,
        this.number,
        this.message,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        success: json["success"],
        number: json["number"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "number": number,
        "message": message,
    };
}
