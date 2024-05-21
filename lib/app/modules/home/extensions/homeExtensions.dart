// Future<void> fetchUserData() async {
//   try {
//     var response = await httpClient.get(AppUrl.RETAILER_PROFILE,
//
//     if (response.statusCode == 200) {
//
//       final responseData = jsonDecode(response.body);
//
//       print(responseData);
//     } else {
//
//       throw Exception('Failed to load user data: ${response.statusCode}');
//     }
//   } catch (e) {
//
//   }
// }
import 'dart:convert';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pepsico_loyalty/api/api/api_controller.dart';
import 'package:pepsico_loyalty/api/api/api_url.dart';

import '../model/home.model.dart';

extension HomeExtension on ApiController {
  Future<RetailerProfiler> fetchUserData() async {
    try {
      EasyLoading.show(status: "Loading...");
      final response = await httpClient.get(AppUrl.RETAILER_PROFILE);
      print("status code ${response.statusCode}");

      if (response.statusCode == 200) {
        EasyLoading.dismiss();

        return RetailerProfiler.fromJson(
            jsonDecode(response.bodyString ?? "{}"));
      } else {
        print('Request failed with status: ${response.statusCode}');
        // Handle error appropriately...
      }
    } catch (e) {
      print('Error during GET request: $e');
      // Handle error appropriately...
    }
    return RetailerProfiler();
  }

}
