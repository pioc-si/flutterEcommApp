import 'package:ecommapp/pages/food/popular_food_detail.dart';
import 'package:ecommapp/pages/food/recommended_food_detail.dart';
import 'package:ecommapp/pages/home/main_food_page.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/route_manager.dart';

class RouteHelper {

  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendeFood = "/recommended-food";

  static String getInitial()=>'$initial';
  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getRecommendedFood(int pageId) => '$recommendeFood?pageId=$pageId';


  static List<GetPage> routes =[
    GetPage(name: initial, page: () => MainFoodPage()),
    GetPage(name: popularFood, page: () {
      var pageId = Get.parameters['pageId'];
      return PopularFoodDetail(pageId:int.parse(pageId!));
    },
      transition: Transition.fadeIn
    ),
    GetPage(name: recommendeFood, page: () {
      var pageId = Get.parameters['pageId'];

      return RecommendedFoodDetail(pageId:int.parse(pageId!));
    },
      transition: Transition.fadeIn
    ),

    
  ];

}
