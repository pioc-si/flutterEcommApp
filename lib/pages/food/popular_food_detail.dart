import 'package:ecommapp/utils/colors.dart';
import 'package:ecommapp/utils/dimensions.dart';
import 'package:ecommapp/widgets/app_column.dart';
import 'package:ecommapp/widgets/app_icon.dart';
import 'package:ecommapp/widgets/big_text.dart';
import 'package:ecommapp/widgets/expandable_text_widget.dart';
import 'package:ecommapp/widgets/icon_and_text_widget.dart';
import 'package:ecommapp/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImageSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/food0.png"),
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined)


          ],
          ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImageSize-20,
            child: Container(

              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Chinese Side",),
                  SizedBox(height: Dimensions.height20,),
                  BigText(text: "Introduce"),
                  ExpandableTextWidget(text: "Every once in a while, I combine a few ingredients and they work together from the very start.  This spice blend is one of those magical mysteries. I’ve tripled the recipe so you can keep enough on hand to use for weeks on chicken, fish, and any type of roasted vegetable. For the protein, Belcampo’s Chicken Thighs are perfect. The skin renders in the oven or on the grill, leaving you with a crispy, crunchy exterior and juicy chicken with every bite.")
                ],
              ),


          )),


        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30 ,
        left: Dimensions.width20, right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius20*2),
          topRight: Radius.circular(Dimensions.radius20*2)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white
            ),
          child: Row(
            children: [
              Icon(Icons.remove, color: AppColors.signColor,),
              SizedBox(width: Dimensions.width10/2,),
              BigText(text: "0"),
              SizedBox(width: Dimensions.width10/2,),
              Icon(Icons.add, color:  AppColors.signColor,)
            ],
          ),  
          ),
          Container(
            padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
            child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: AppColors.mainColor,
            ),
          )
        ],
      ),
      ),
    );
  }
}
