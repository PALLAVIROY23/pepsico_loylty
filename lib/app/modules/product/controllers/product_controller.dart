import "package:flutter/material.dart" as material;
import 'package:get/get.dart';
import 'package:pepsico_loyalty/api/api/api_controller.dart';
import 'package:pepsico_loyalty/app/modules/product/extension/product_extension.dart';

import '../../REDEEM_CATALOGUE/model/redeem_catalogue_model.dart';

class ProductController extends GetxController {
  ApiController apiController;

  ProductController({required this.apiController});

  var searchController = material.TextEditingController();

  var selectedState = 'Select State'.obs;
  var statesList = <String>["Select State"].obs;
  var statesIdList = <int>[0].obs;
  var selectedStatecity = 'Select City'.obs;
  var statescityList = <String>["Select City"].obs;
  var statescityIdList = <int>[0].obs;

  var catalogueDataList = CatalogueData(rows: [], count: 0, maxPoints: 0).obs;

  // var validatePinCode = "".obs;
  var productData = Row().obs;

  @override
  void onInit() {
    productData.value = Row.fromJson(Get.arguments['mainData']);

    catalogueDataList.value = CatalogueData.fromJson(Get.arguments['fullData']);
    catalogueDataList.refresh();
    productData.refresh();

    allzones();
    super.onInit();
  }

  fetchStates() async {
    var fetchedStates = await apiController.usersdata();
    statesList.value = ["Select State"];
    statesIdList.value = [0];
    if (fetchedStates.success ?? false) {
      var data = fetchedStates.data!;
      for (int i = 0; i < data.count; i++) {
        statesList.add(data.rows[i].name ?? '');
        statesIdList.add(data.rows[i].id ?? 0);
      }
    }
  }

  void allzones() async {
    var zones = await apiController.fetchData();
    if (zones.success ?? false) {}
  }

  getDistrict(String? name) async {
    statescityList.value = ["Select City"];
    selectedStatecity.value = "Select City";
    statescityIdList.value = [0];
    if (name == null) {
      selectedState.value = selectedState.value;
      return;
    } else if (name.isEmpty || name == "Select State") {
      selectedState.value = "Select State";
      statescityList.value = ["Select City"];
    } else {
      int index = statesList.indexWhere((element) => element == name);

      selectedState.value = name;
      // API CALLING FOR GET DISTRICT IN THIS STATE

      var response = await apiController.cityData(statesIdList[index]);
      if (response.success ?? false) {
        var data = response.data!.rows ?? [];

        for (var a in data) {
          statescityList.add(a.name ?? "");
          statescityIdList.add(a.id ?? 0);
        }
      }

      update();
    }
  }

  updateDistrictName(String? name) {
    selectedStatecity.value = name ?? "Select City";
    int index = statescityList.indexWhere((element) => element == name);
    print("District Id : ${statescityIdList[index]}");
    update();
  }
}
