import 'package:ecommapp/pages/cart/cart_page.dart';
import 'package:ecommapp/pages/food/popular_food_detail.dart';
import 'package:ecommapp/pages/food/recommended_food_detail.dart';
import 'package:ecommapp/pages/home/home_page.dart';
import 'package:ecommapp/pages/home/main_food_page.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/route_manager.dart';

class RouteHelper {

  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendeFood = "/recommended-food";
  static const String cartPage = "/cart-page";


  static String getInitial()=>'$initial';
  static String getPopularFood(int pageId, String page) => '$popularFood?pageId=$pageId&page=$page';
  static String getRecommendedFood(int pageId, String page) => '$recommendeFood?pageId=$pageId&page=$page';
  static String getCartPage() => '$cartPage';


  static List<GetPage> routes =[
    GetPage(name: initial, page: () => HomePage()),


    GetPage(name: popularFood, page: () {
      var pageId = Get.parameters['pageId'];
      var page = Get.parameters["page"];
      return PopularFoodDetail(pageId:int.parse(pageId!), page:page!);
    },
      transition: Transition.fadeIn
    ),


    GetPage(name: recommendeFood, page: () {
      var pageId = Get.parameters['pageId'];
      var page = Get.parameters["page"];

      return RecommendedFoodDetail(pageId:int.parse(pageId!), page:page!);
    },
      transition: Transition.fadeIn
    ),


    GetPage(name: cartPage, page: (){
      return CartPage();
    },
    transition: Transition.fadeIn
    )

    
  ];

}
