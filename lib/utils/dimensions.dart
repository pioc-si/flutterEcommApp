import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWeight = Get.context!.width;

  // Umumiy ekran height => 844 Containerimiz 220 = Shuning uchun bo7lamiz || 844/220 => 3.84
  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  //Sizbox o'lchov birliklari  844 => /10/15/20
  // dinamic height =>  padding and margn
  static double height10 = screenHeight / 84.4; // => 10
  static double height15 = screenHeight / 56.27; // => 15
  static double height20 = screenHeight / 42.2; // = 20
  static double height30 = screenHeight / 28.13; // => 30
  static double height45 = screenHeight / 18.76; // => 30

  //dinamic weight => padding and margn
  static double width10 = screenHeight / 84.4; // => 10
  static double width15 = screenHeight / 56.27; // => 15
  static double width20 = screenHeight / 42.2; // => 20
  static double width30 = screenHeight / 28.13; // => 30
  static double width45 = screenHeight / 18.76; // => 30




  static double font20 = screenHeight / 42.2; // => 20

  static double radius15 = screenHeight / 56.27; // => 20
  static double radius20 = screenHeight / 42.2; // => 20
  static double radius30 = screenHeight / 28.13; // => 30
  static double radius45 = screenHeight/30.76;




}