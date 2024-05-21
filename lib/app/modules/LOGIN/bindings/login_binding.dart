import 'package:get/get.dart';
import 'package:pepsico_loyalty/app/extensions/global_extensions.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(apiController: apiController),
    );
  }
}
