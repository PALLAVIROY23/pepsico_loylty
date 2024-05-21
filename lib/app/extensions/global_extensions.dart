import 'package:get/get.dart';
import 'package:pepsico_loyalty/api/api/api_controller.dart';

extension CustomBinding on Bindings{
  ApiController get apiController => Get.find<ApiController>();
}