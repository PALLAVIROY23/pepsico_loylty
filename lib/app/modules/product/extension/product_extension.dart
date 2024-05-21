import 'dart:convert';

import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../api/api/api_controller.dart';
import '../../../../api/api/api_url.dart';
import '../../REDEEM_CATALOGUE/model/redeem_catalogue_model.dart';
import '../model/get_all_zone_with_data_model.dart';
import '../model/get_city_by_stateID.dart';
import '../model/state_area_model.dart';
import '../model/stateareawithcity.model.dart';

extension HomeExtension on ApiController {
  Future<RedeemCatalogue> userdata() async {
    try {
      EasyLoading.show(status: "Loading");
      var res = await httpClient.post(AppUrl.REDEEM_CATALOGUE, body: {});
      if (res.statusCode == 200) {
        EasyLoading.dismiss();
        return RedeemCatalogue.fromJson(jsonDecode(res.bodyString ?? "{}"));
      }
      return RedeemCatalogue();
    } catch (e) {
      print(e.toString());

      return RedeemCatalogue();
    }
  }

  Future<StateArea> usersdata() async {
    try {
      EasyLoading.show(status: "Loading");
      var response = await httpClient.post(AppUrl.STATE_AREA, body:
      {
        "state_id": 12
      });
      if (response.statusCode == 200) {
        EasyLoading.dismiss();
        return StateArea.fromJson(jsonDecode(response.bodyString ?? "{}"));
      }
      return StateArea();
    } catch (e) {
      print(e.toString());
    }
    return StateArea();
  }

  Future<StateAreaWithCity> user() async {
    try {
      EasyLoading.show(status: "Loading");
      var response = await httpClient.post(AppUrl.STATE_AREA_WITH_CITY, body:
      {
        "state_id": 12
      });
      if (response.statusCode == 200) {
        EasyLoading.dismiss();
        return StateAreaWithCity.fromJson(jsonDecode(response.bodyString ?? "{}"));
      }
      return StateAreaWithCity();
    } catch (e) {
      print(e.toString());
    }
    return StateAreaWithCity();
  }

  Future<Getallzonewithdata>fetchData() async {
    try {
      EasyLoading.show(status: "Loading...");
      final response = await httpClient.get(AppUrl.ALL_DATA_ZONES);
      print("status code ${response.statusCode}");

      if (response.statusCode == 200) {
        EasyLoading.dismiss();

        return Getallzonewithdata.fromJson(
            jsonDecode(response.bodyString ?? "{}"));
      } else {
        print('Request failed with status: ${response.statusCode}');
        // Handle error appropriately...
      }
    } catch (e) {
      print('Error during GET request: $e');
      // Handle error appropriately...
    }
    return Getallzonewithdata();
  }


  Future<Citylist>cityData(int stateId) async {
    try {
      EasyLoading.show(status: "Loading...");
      final response = await httpClient.post(AppUrl.GET_CITY,body: {"stateId":stateId});
      print("status code ${response.statusCode}");

      if (response.statusCode == 200) {
        EasyLoading.dismiss();

        return Citylist.fromJson(
            jsonDecode(response.bodyString ?? "{}"));
      } else {
        print('Request failed with status: ${response.statusCode}');
        // Handle error appropriately...
      }
    } catch (e) {
      print('Error during GET request: $e');
      // Handle error appropriately...
    }
    return Citylist();
  }






}
