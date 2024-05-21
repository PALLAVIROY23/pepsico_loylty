import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:pepsico_loyalty/app/modules/home/extensions/homeExtensions.dart';

import '../../../../api/api/api_controller.dart';
import 'package:http/http.dart' as httpclient;

import '../../../../api/api/api_url.dart';
import '../model/home.model.dart';

class HomeController extends GetxController {
  ApiController apiController;

  HomeController({required this.apiController});

  //TODO: Implement HomeController

  final count = 0.obs;
  TextEditingController mobilenumber = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController RtailerProfile = TextEditingController();
  TextEditingController address = TextEditingController();
  var isLoading = false.obs;
  var userData = Data().obs;
  var userdetails = RetailerProfiler().obs;

  @override
  void onInit() {
    getprofile();
    super.onInit();
  }



  void increment() => count.value++;

  getprofile() async {
    var tp = await apiController.fetchUserData();

    print("user details.value.success: ${tp.toJson()}");
    print("user details");


userdetails.value=RetailerProfiler.fromJson(tp.toJson());
    if (userdetails.value.success ?? false) {
      userData.value=userdetails.value.data!;
    }
      print("user details");
      print(userdetails.value.success);
      print(userData.toJson());
      name.text = userData.value.name.toString() ?? "";
      print("name.text ${name.text}");

      mobilenumber.text = userData.value.number.toString() ?? '';
      print("mobilenumber.text ${mobilenumber.text}");
    RtailerProfile.text =userData.value.id.toString() ?? '';
    print("RtailerProfile.text ${RtailerProfile.text}");
    address.text =userData.value.userProfile==null?'N/A': '${userData.value.userProfile?.address } ${userData.value.userProfile?.address2 } ${userData.value.userProfile?.address3 } ${(userData.value.userProfile?.town) }  ${userData.value.userProfile?.city } ${userData.value.userProfile?.state }';
    print("address.text ${address.text}");

    }



  }




