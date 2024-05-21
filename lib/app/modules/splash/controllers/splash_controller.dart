import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pepsico_loyalty/app/data/constant.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController
GetStorage box = GetStorage();
  final count = 0.obs;
  @override
  void onInit()async {
    Future.delayed(Duration (seconds:  2), (){
      if(box.read(Contanst.TOKEN) == null || box.read(Contanst.TOKEN) == ""){
        Get.offAllNamed(Routes.LOGIN);
      }else{
        Get.offAllNamed(Routes.HOME);
      }

    });
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
}
