import 'package:ecommapp/controllers/cart_controller.dart';
import 'package:ecommapp/controllers/popular_product_controller.dart';
import 'package:ecommapp/controllers/recommended_product_controller.dart';
import 'package:ecommapp/data/api/api_client.dart';
import 'package:ecommapp/data/repository/cart_repo.dart';
import 'package:ecommapp/data/repository/popular_product_repo.dart';
import 'package:ecommapp/data/repository/recommended_product_repo.dart';
import 'package:ecommapp/utils/app_constants.dart';
import 'package:get/get.dart';


Future<void> init() async {
  Get.lazyPut(()=> ApiClient(appBaseUrl: AppConstants.BASE_URL));

  Get.lazyPut(()=> PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(()=> RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(()=> CartRepo());

  Get.lazyPut(()=> PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(()=> RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(()=> CartController(cartRepo: Get.find()));

}