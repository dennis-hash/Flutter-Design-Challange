import 'package:flutter/material.dart';
import 'package:food_ordering/constants/colors.dart';
import 'package:food_ordering/screens/home/widget/search.dart';

import '../../models/restaurant.dart';
import 'widget/app_bar.dart';
import 'widget/featured_list.dart';
import 'widget/featured_list_view.dart';
import 'widget/recommonded_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        children: [
          App_Bar(
            Icons.menu_rounded,
          ),
          SearchInfo(),
          SizedBox(height: 25),
          RecommendedListView(selected,
              (int index){
                setState(() {
                  selected = index;
                });
               
              },
              pageController,restaurant),
          FoodList(selected, 
          (int index){
            setState(() {
              selected = index;
            });
            //pageController.animateToPage(index, duration: Duration(milliseconds: 400), curve: Curves.easeIn);
          }, restaurant),
          Expanded(
            child: FoodListView(
              selected,
              (int index){
                setState(() {
                  selected = index;
                });
               
              },
              pageController,
              restaurant,
            ),)
          
      ],
      )
    );
  }
}