
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../constants/colors.dart';
import '../../../models/restaurant.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Restaurant restaurant;
  FoodList(this.selected, this.callback, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 30),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index)=>GestureDetector(
          onTap: (){
            callback(index);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            
            child: Text(category[index], 
            style: TextStyle(
              fontSize: selected == index ? 18 : 16,
              height: 1.5,
              fontWeight: selected == index ? FontWeight.bold : FontWeight.normal,
              color: selected == index ? Colors.black : Colors.grey,
          
            ),
          ),
        
          ),
        ),
        separatorBuilder: (_, index)=>SizedBox(width: 20),
        itemCount: category.length,)
    );
  }
}