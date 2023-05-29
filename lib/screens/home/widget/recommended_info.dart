import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../models/food.dart';

class RecommendedItem extends StatelessWidget {
  final Food food;
  
  final List<Color> colors = [    Color.fromRGBO(255, 235, 238, 1),    Color.fromRGBO(232, 245, 233, 1),    Color.fromRGBO(227, 242, 253, 1),    Color.fromRGBO(255, 253, 231, 1),    Color.fromRGBO(252, 228, 236, 1),    Color.fromRGBO(255, 243, 224, 1),    Color.fromRGBO(243, 229, 245, 1),    Colors.teal,  ];

  RecommendedItem(this.food);

  @override
  Widget build(BuildContext context) {
    final Random random = Random();
    Color color = colors[random.nextInt(colors.length)];
    return Container(
      height: 10,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),

        ),
        child: Column(
          children: [
          Container( 
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            height: 100,
            width: 100,
            
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(food.imgUrl),
                fit: BoxFit.contain,

              ),
            ),
          
        ),
            Expanded(
              child:Container(
               
                child: Column(
                  children: [
                    Text(food.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                   
                      //dollar sign
                       Text(
                            '\$${food.price}',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  
                    
                  ],
                ),
                ),
              ),
           
          ],
          ),

    );
  }
}