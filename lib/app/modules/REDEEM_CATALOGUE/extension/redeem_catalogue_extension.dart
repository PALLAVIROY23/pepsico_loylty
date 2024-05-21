import 'dart:convert';

import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../api/api/api_controller.dart';
import '../../../../api/api/api_url.dart';
import '../model/redeem_catalogue_model.dart';

extension HomeExtension on ApiController {
  Future<RedeemCatalogue> userdata() async {
    try {
      EasyLoading.show(status: "Loading");
      var res = await httpClient.post(AppUrl.REDEEM_CATALOGUE, body: {

      });
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
}
