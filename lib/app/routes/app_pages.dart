import 'package:get/get.dart';

import '../modules/LOGIN/bindings/login_binding.dart';
import '../modules/LOGIN/views/login_view.dart';
import '../modules/REDEEM_CATALOGUE/bindings/redeem_catalogue_binding.dart';
import '../modules/REDEEM_CATALOGUE/views/redeem_catalogue_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/product/bindings/product_binding.dart';
import '../modules/product/views/product_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REDEEM_CATALOGUE,
      page: () => const RedeemCatalogueView(),
      binding: RedeemCatalogueBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () =>  ProductView(),
      binding: ProductBinding(),
    ),
  ];
}
