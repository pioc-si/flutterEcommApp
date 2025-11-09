import 'package:ecommapp/pages/home/main_food_page.dart';
import 'package:ecommapp/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}): super(key:key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex=0;


  List pages=[
      MainFoodPage(),
      Container(child: Center(child: Text("next page"))),
      Container(child: Center(child: Text("next next page"))),
      Container(child: Center(child: Text("next next next page"))),
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex=index;
    });
    
  }

  @override
  void initState() {
    super.initState();

  }

  List<Widget> _buildScreens() {
        return [
          MainFoodPage(),
          Container(child: Center(child: Text("next page"))),
          Container(child: Center(child: Text("next next page"))),
          Container(child: Center(child: Text("next next next page"))),
        ];
    }


  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: pages[_selectedIndex],
    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: AppColors.mainColor,
      unselectedItemColor: Colors.amberAccent,
      showSelectedLabels: false,
      showUnselectedLabels:false ,
      selectedFontSize: 0.0,
      unselectedFontSize: 0.0,
      currentIndex: _selectedIndex,
      onTap: onTapNav,
      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "home"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.archive),
          label: "history"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "cart"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "me"
        ),

      ]),
   );
  }



}

