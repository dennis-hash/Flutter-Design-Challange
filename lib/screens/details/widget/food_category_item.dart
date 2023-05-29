import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../models/food.dart';

class FoodCategoryItem extends StatelessWidget {
  final Food food;
  
  final List<Color> colors = [    Color.fromRGBO(255, 235, 238, 1),    Color.fromRGBO(232, 245, 233, 1),    Color.fromRGBO(227, 242, 253, 1),    Color.fromRGBO(255, 253, 231, 1),    Color.fromRGBO(252, 228, 236, 1),    Color.fromRGBO(255, 243, 224, 1),    Color.fromRGBO(243, 229, 245, 1),    Colors.teal,  ];

  FoodCategoryItem(this.food);

  @override
  Widget build(BuildContext context) {
    final Random random = Random();
    Color color = colors[random.nextInt(colors.length)];
    return Container(
     
      child: Column(
        children: [
          Container(
            child: Row(children: [
              Container( 
                padding: EdgeInsets.all(20),
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                   boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 4),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(food.imgUrl),
                    fit: BoxFit.contain,
                  ),
                ),
              // margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              // height: 100,
              // width: 100,
    
              // decoration: BoxDecoration(
              //   shape: BoxShape.circle,
              //   color: Colors.white,
              //   image: DecorationImage(
              //     image: AssetImage(food.imgUrl),
              //     fit: BoxFit.contain
              //   ),
              // ),
  
          ),
          
           Expanded(
              child: Container(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            food.name,
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            '\$${food.price}',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '\$${food.price}',
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.5,
                              color: Colors.grey.withOpacity(0.4),
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
               
               ),









                          
            ]),
          ),
     
            //  Expanded(
            //    child:Container(
           
            //      child: Row(
            //        children: [
            //          Text(food.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
               
            //            //dollar sign
            //             Text(
            //                  '\$${food.price}',
            //                  style: TextStyle(
            //                    fontSize: 16,
            //                    height: 1.5,
            //                    fontWeight: FontWeight.bold,
            //                  ),
            //                ),
              
                
            //        ],
            //      ),
            //      ),
            //    ),
        
        
        ]),














        //   Container( 
        //     margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        //     height: 100,
        //     width: 100,
            
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: Colors.white,
        //       image: DecorationImage(
        //         image: AssetImage(food.imgUrl),
        //         fit: BoxFit.contain,

        //       ),
        //     ),
          
        // ),
            // Expanded(
            //   child:Container(
               
            //     child: Column(
            //       children: [
            //         Text(food.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                   
            //           //dollar sign
            //            Text(
            //                 '\$${food.price}',
            //                 style: TextStyle(
            //                   fontSize: 16,
            //                   height: 1.5,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
                  
                    
            //       ],
            //     ),
            //     ),
            //   ),
           
        
    );
  }
}