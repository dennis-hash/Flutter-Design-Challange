import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_ordering/screens/details/widget/food_detail.dart';

import '../../constants/colors.dart';
import '../../models/food.dart';
import '../../models/restaurant.dart';
import '../home/widget/app_bar.dart';
import 'widget/food_category.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  final int selected;
  final restaurant = Restaurant.generateRestaurant();
  DetailPage(this.selected,this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
     body: SingleChildScrollView(
      child: Column(
        children: [
           App_Bar(Icons.menu_rounded,),
           FoodDetail(food),
           FoodCategoryListView(selected,food,restaurant),
        ]), 
     ),
    );
  }
}