import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:pepsico_loyalty/api/api/api_controller.dart';
import 'package:pepsico_loyalty/app/data/constant.dart';
import 'package:pepsico_loyalty/app/modules/LOGIN/extensions/loginExtension.dart';
import 'package:pepsico_loyalty/app/modules/LOGIN/models/otpModel.dart';
import 'package:pepsico_loyalty/app/modules/home/views/home_view.dart';
import 'package:pepsico_loyalty/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:pin_code_fields/pin_code_fields.dart';

// import '../../../../constants/constants.dart';
// import '../../../routes/app_pages.dart';
import '../models/loginModel.dart';

class LoginController extends GetxController {
  ApiController apiController;

  LoginController({required this.apiController});


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  TextEditingController mobilenumber = TextEditingController();
  RxBool ischecked = false.obs;
  RxBool pinCompleted = false.obs;
  TextEditingController pin = TextEditingController();
  RxBool isSendOtp = false.obs;
  TextEditingController otp = TextEditingController();


  void login(String number) {
    if (mobilenumber.text.isEmpty) {
      EasyLoading.showInfo("Please Enter your mobile number");
    } else if (mobilenumber.text.length < 10) {
      EasyLoading.showInfo("Please enter a valid 10-digit mobile number");
    } else if (!ischecked.value) {
      EasyLoading.showInfo("Please check the term & conditions");
    } else {
      sendOTP();
    }
  }


  sendOTP() async {
    var res = await apiController.loginwithnumber(mobilenumber.text);

    if (res.success ?? false) {
      isSendOtp.value = true;
      EasyLoading.showSuccess("${res.message}");
    }
  }

  void verifyOtpcontrol(String otp) {
    if (pin.text.isEmpty) {
      EasyLoading.showError('Please Enter your otp');
    } else if (pin.text.length < 4) {
      EasyLoading.showInfo('Complete Your Otp pin');
    } else {
      verify();
    }
  }

  verify() async {
    var response = await apiController.verifyOtp(mobilenumber.text, pin.text);
    if (response.success ?? false) {
      EasyLoading.showSuccess("${response.message}");
      await apiController.getStorage
          .write(Contanst.TOKEN, response.accessToken);
      Get.offAllNamed(Routes.HOME);
    }
  }
}











