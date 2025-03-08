import 'package:compass/screens/landing/landing_screen_controller.dart';
import 'package:compass/screens/login/login_screen_controller.dart';
import 'package:get/get.dart';

class ParentBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(LandingController());
    Get.lazyPut<LoginScreenController>(() => LoginScreenController());
    //
    // Get.lazyPut<LandingController>(() => LandingController());
    // Get.lazyPut<RegisteredProductsController>(
    //     () => RegisteredProductsController());
    // Get.lazyPut<ExpiringController>(() => ExpiringController());
    // Get.lazyPut<RegisterProductController>(() => RegisterProductController());
    // // Get.lazyPut<HomeScreenController>(() => HomeScreenController());
    // Get.lazyPut<VerifyProductController>(() => VerifyProductController());
    // Get.lazyPut<ExpiredProductsController>(() => ExpiredProductsController());
    // Get.lazyPut<SearchScreenController>(() => SearchScreenController());

  }
}
