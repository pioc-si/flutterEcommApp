import 'package:ecommapp/pages/home/main_food_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RouteHelper {

  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendeFood = "/recommended-food";


  static List<GetPage> routes =[
    GetPage(name: "/", page: () => MainFoodPage()),
    
    
  ];

}
