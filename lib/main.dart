import 'package:ecommapp/controllers/popular_product_controller.dart';
import 'package:ecommapp/controllers/recommended_product_controller.dart';
import 'package:ecommapp/pages/food/popular_food_detail.dart';
import 'package:ecommapp/pages/food/recommended_food_detail.dart';
import 'package:ecommapp/pages/home/food_page_body.dart';
import 'package:ecommapp/pages/home/main_food_page.dart';
import 'package:ecommapp/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();


    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: MainFoodPage(),
      //initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}