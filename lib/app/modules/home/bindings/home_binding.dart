import 'package:get/get.dart';
import 'package:pepsico_loyalty/app/extensions/global_extensions.dart';
import 'package:pepsico_loyalty/app/modules/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(apiController: apiController),
    );
  }
}
