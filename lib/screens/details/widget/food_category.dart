import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering/models/food.dart';

import '../../../models/restaurant.dart';
import '../../details/details.dart';
import '../../home/widget/featured_item.dart';
import 'food_category_item.dart';

class FoodCategoryListView extends StatelessWidget {
   final Food food;
   final int selected;
   final Restaurant restaurant;
  const FoodCategoryListView(this.selected,this.food,this.restaurant);

 

  @override
  Widget build(BuildContext context) {
       
      final category = restaurant.menu.keys.toList(); 
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      height: 230,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 25),
            child: Text(category[selected],
            //child:  FoodCategoryItem(food), 
            style: TextStyle(fontSize:24,fontWeight: FontWeight.bold),),
            
          ),
          SizedBox(height: 10), 
          Expanded(
            child: GridView.count(
            padding: EdgeInsets.symmetric(horizontal: 25),
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 2,
            childAspectRatio: 0.4,
            scrollDirection: Axis.horizontal,
            children: List.generate(
              restaurant.menu[category[1]]!.length,
              (index) => GestureDetector(
                // onTap: () {
                //   Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => DetailPage(selected, restaurant.menu[category[0]]![index])),
                //   );
                // },
                //child: Text("wow"),
                child: FoodCategoryItem(
                  restaurant.menu[category[1]]![index],
                ),
              ),
            ),
            //shrinkWrap: true,
            //physics: NeverScrollableScrollPhysics(),
          ),
      ) 

          // Expanded(
          //   child: ListView.separated(
          //   padding: EdgeInsets.symmetric(horizontal:25),
          //  //scrollDirection: Axis.horizontal,
          //   itemBuilder: (context, index) => GestureDetector(
          //     // onTap: () {
          //     //   Navigator.of(context).push(
          //     //     MaterialPageRoute(builder: (context) => DetailPage(selected, restaurant.menu[category[0]]![index])),
          //     //   );
          //     // },
          //     //child: Text("wow"),
          //     child: FoodCategoryItem(
                
          //       restaurant.menu[category[1]]![index],
          //     ),
          //   ),
          //   separatorBuilder: (_, index) => SizedBox(width: 10),
          //   itemCount: (restaurant.menu[category[selected]]!.length),
          // ),)
        //   Row(
        //   children: [
        //     Expanded(
        //       child: ListView.separated(
        //         padding: EdgeInsets.symmetric(horizontal:25),
        //         scrollDirection: Axis.vertical,
        //         itemBuilder: (context, index) => GestureDetector(
        //           onTap: () {
        //             Navigator.of(context).push(
        //               MaterialPageRoute(builder: (context) => DetailPage(selected, restaurant.menu[category[0]]![index])),
        //             );
        //           },
        //           child: FoodItem(
        //             restaurant.menu[category[0]]![index],
        //           ),
        //         ),
        //         separatorBuilder: (_, index) => SizedBox(height: 10),
        //         itemCount: ( restaurant.menu[category[selected]]!.length / 2).ceil(),
        //       ),
        //     ),
           
        //   ],
        // )


          
        //    GridView.count(
        //      crossAxisCount: ( restaurant.menu[category[selected]]!.length / 2).ceil(),
        //      children: List.generate( restaurant.menu[category[selected]]!.length, (index) {
        //      return Center(
        //      child: Text("wow")
        //     );
        //   }),
        // ),

          
        ],
      ),
      

    );
  }
}


/*class RecommendedListView extends StatelessWidget {
  late final Restaurant restaurant;

  RecommendedListView(this.restaurant);


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
                  print("===============================!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!==================");
                   Navigator.of(context).push(
                   MaterialPageRoute(builder: (context) => DetailPage(restaurant.menu[category[0]]![index]))
                );
                }, 
                //child: RecommendedItem(
                //      restaurant.menu[category[0]]![index],
                //   ),
              ),
            separatorBuilder: (_, index)=>SizedBox(width: 10),
            itemCount: length,
            ),
      
        ),
        
        
        
      ],

    ),
    
    );
  }
}*/