import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering/models/food.dart';

import '../../../models/restaurant.dart';
import '../../details/details.dart';
import 'recommended_info.dart';



class RecommendedListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  late final Restaurant restaurant;

  RecommendedListView(this.selected,this.callback,this.pageController,this.restaurant);


  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    List<Food>? lists = restaurant.menu[category[0]];
    int length = lists?.length ?? 0;
   
  
    return Container(
      
    height: 230,
    
    //code to add text
    child: Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 25),
          child: Text("Recommended",
          style: TextStyle(fontSize:24,fontWeight: FontWeight.bold),),
          
        
        ),
        SizedBox(height: 10),
        Expanded(
           
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal:25),
              scrollDirection: Axis.horizontal,
              itemBuilder:(context, index)=>GestureDetector(
                onTap: (){
                 
                   Navigator.of(context).push(
                   MaterialPageRoute(builder: (context) => DetailPage(selected,restaurant.menu[category[0]]![index]))
                );
                }, 
                child: RecommendedItem(
                      restaurant.menu[category[0]]![index],
                   ),
              ),
            separatorBuilder: (_, index)=>SizedBox(width: 10),
            itemCount: length,
            ),
      
        ),
        
        
        
      ],

    ),
    
    );
  }
}