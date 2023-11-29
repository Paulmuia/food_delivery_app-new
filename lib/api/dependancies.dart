import 'package:food_delivery/products/auth_controller.dart';
import 'package:food_delivery/products/auth_repo.dart';
import 'package:food_delivery/products/cart_controller.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../products/cart_repo.dart';
import '../products/popular_product_controller.dart';
import '../products/popular_product_repo.dart';
import '../products/recommended_product_controller.dart';
import '../products/recommended_product_repo.dart';
import 'api_client.dart';
import 'app_constants.dart';

Future<void> init() async {
  final sharedPreferences=await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);
  Get.lazyPut(() => ApiClient(appBaseUrl:AppConstants.BASE_URL));
  Get.lazyPut(() => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() =>CartRepo(sharedPreferences:Get.find()));

  Get.lazyPut(()=>AuthController(authRepo: Get.find()));
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));

}
