import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:pepsico_loyalty/api/api/api_controller.dart';
import 'package:pepsico_loyalty/app/modules/REDEEM_CATALOGUE/extension/redeem_catalogue_extension.dart';
import 'package:pepsico_loyalty/app/modules/REDEEM_CATALOGUE/model/redeem_catalogue_model.dart';

class RedeemCatalogueController extends GetxController {
  ApiController apiController;
    // TODO: implement apiController
    RedeemCatalogueController({required this.apiController});

  //TODO: Implement RedeemCatalogueController

  final count = 0.obs;

  var catalogueDataList=CatalogueData(rows: [],count: 0,maxPoints: 0).obs;
  var redeemCatalogue = RedeemCatalogue().obs;
  @override
  void onInit() {
    productdata();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;


  productdata()async{
    var productsdata = await apiController.userdata();
    redeemCatalogue.value = productsdata;
    if(productsdata.success??false){
      catalogueDataList.value=productsdata.data!;
      EasyLoading.showSuccess("${productsdata.message}");

    }else
      {
        EasyLoading.showError("${productsdata.message}");

    }
  }

}
