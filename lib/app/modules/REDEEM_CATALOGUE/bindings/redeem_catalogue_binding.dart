import 'package:get/get.dart';
import 'package:pepsico_loyalty/app/extensions/global_extensions.dart';

import '../controllers/redeem_catalogue_controller.dart';

class RedeemCatalogueBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RedeemCatalogueController>(
      () => RedeemCatalogueController(apiController: apiController),
    );
  }
}
