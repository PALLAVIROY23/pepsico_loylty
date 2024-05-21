import 'package:get/get.dart';
import 'package:pepsico_loyalty/app/extensions/global_extensions.dart';

import '../controllers/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductController>(
      () => ProductController(apiController: apiController),
    );
  }
}
