

import 'dart:convert';

import '../../../../api/api/api_controller.dart';
import '../../../../api/api/api_url.dart';
import '../models/loginModel.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../models/otpModel.dart';


extension HomeExtension on ApiController {
  Future<LoginModel> loginwithnumber(var mobilenumber) async {
    try {
      EasyLoading.show(status: "Loading");
      var res = await httpClient.post(AppUrl.LOGIN_URL, body: {

        "number": mobilenumber,
        "last_login_ip": "127:0:0:1"
      }
      );
      if (res.statusCode == 200) {
        EasyLoading.dismiss();
        return LoginModel.fromJson(jsonDecode(res.bodyString ?? "{}"));
      }
      return LoginModel();
    } catch (e) {
      print(e.toString());

      return LoginModel();
    }
  }


  Future<VerifyOtpModel>verifyOtp(String mobilenumber, String otp)async{

    try{
      EasyLoading.show(status: "Loading");
      var res =await httpClient.post(AppUrl.OTP_VERIFY,
          body: {
            "otp": otp,
            "number": mobilenumber,
            "medium": "Web",
            "lat": -70.343000,
            "lng": -70.011232,
            "timezone": "Aisa/Kolkata",
            "login_ip": "127.0.0.1"

          });
      if(res.statusCode==200) {
        EasyLoading.dismiss();
        VerifyOtpModel verifyOtp = VerifyOtpModel.fromJson(res.body);
        return verifyOtp;
      }else {
        EasyLoading.dismiss();
        EasyLoading.showError(
            "${jsonDecode(res.bodyString ?? "")["message"] ?? "Something went wrong"}");
      }


    }
    catch(e){
      print(e.toString());

    }

    return VerifyOtpModel();


  }

}






















// EasyLoading.showError(
// "${jsonDecode(response.bodyString ?? "")["message"] ?? "Something went wrong"}")
