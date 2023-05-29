import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../models/food.dart';

class FoodDetail extends StatefulWidget {
  final Food food;
  const FoodDetail(this.food);
 

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  int _itemCount = 1;
  @override
  Widget build(BuildContext context) {
      return Container(
      
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),  
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.end,
                children: [
               //BusketButton(itemCount: 3),
               ]
               
              ),
             Text(
                widget.food.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
             
              Row(
                children: [
                  Container(
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(widget.food.imgUrl),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Expanded(

                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.end, // Align items to the bottom
                       crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      
                      //two icons: one for the dollar sign, one for the heart
                      
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        FloatingActionButton(
                          onPressed: () {
                          
                          },
                          shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: Colors.white,
                          child: Icon(Icons.favorite_border_outlined,color: Colors.pink),
                          mini: true,
                        ),
                        SizedBox(height: 20,),
                        FloatingActionButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: Colors.white,
                          child: Icon(Icons.access_alarms_outlined,color: Colors.pink),
                          mini: true,
                        ),
                          
                         
                       
                    ],)
                    )

                  
                 
                ],
              
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                   Text(
                  "\$${widget.food.price}",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Spacer(),
                Container(
                 
                 padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                   
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // decoration: BoxDecoration(
                  //   shape: BoxShape.circle,
                  //   color: Colors.white,
                  // ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                     

                      FloatingActionButton(
                        onPressed: () {
                            setState(() {
                             if (_itemCount > 1) {
                               _itemCount = _itemCount - 1;
                             }
                             else{
                               _itemCount = 1;
                             }
                           });
                           print(_itemCount);
                            
                        },
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.white,
                        child: Icon(Icons.remove,color: Colors.pink),
                        mini: true,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                        decoration: BoxDecoration(
                         
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          _itemCount.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                     
                      FloatingActionButton(
                        onPressed: () {
                           setState(() {
                             _itemCount = _itemCount + 1;
                           });
                         
                        },
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.white,
                        child: Icon(Icons.add,color: Colors.pink),
                        mini: true,
                      ),
                      SizedBox(width: 3),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            // Callback function to handle tap event
                          },
                          child: Text(
                            "Add to cart",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        )

                       
                      ),
                    
                    ],
                    
                  ),
                  
                ),
                
                ],
              ),
            ],
          ),
          
         
        ],
      ),
    );
  }
}


// class FoodDetail extends StatelessWidget {
//   final Food food;
//    FoodDetail(this.food);
//    var _itemCount = 3;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(20),  
//       ),
//       child: Stack(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,

//             children: [
//               Row(
//                mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                BasketButton(itemCount: 3),]
               
//               ),
//              Text(
//                 food.name,
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
             
//               Row(
//                 children: [
//                   Container(
//                     height: 250,
//                     width: 200,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                       image: DecorationImage(
//                         image: AssetImage(food.imgUrl),
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                   ),
//                   Expanded(

//                     child:Column(
//                       mainAxisAlignment: MainAxisAlignment.end, // Align items to the bottom
//                        crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
                      
//                       //two icons: one for the dollar sign, one for the heart
                      
//                         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         FloatingActionButton(
//                           onPressed: () {
                          
//                           },
//                           shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(8),
//                           ),
//                           backgroundColor: Colors.white,
//                           child: Icon(Icons.favorite_border_outlined,color: Colors.pink),
//                           mini: true,
//                         ),
//                         SizedBox(height: 20,),
//                         FloatingActionButton(
//                           onPressed: () {},
//                           shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(8),
//                           ),
//                           backgroundColor: Colors.white,
//                           child: Icon(Icons.access_alarms_outlined,color: Colors.pink),
//                           mini: true,
//                         ),
                          
                         
                       
//                     ],)
//                     )

                  
                 
//                 ],
              
//               ),
//               SizedBox(height: 5,),
//               Row(
//                 children: [
//                    Text(
//                   "\$${food.price}",
//                   style: TextStyle(
//                     fontSize: 30,
//                   ),
//                 ),
//                 Spacer(),
//                 Container(
                 
//                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
//                   decoration: BoxDecoration(
//                     color: Colors.red,
                   
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   // decoration: BoxDecoration(
//                   //   shape: BoxShape.circle,
//                   //   color: Colors.white,
//                   // ),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
                     

//                       FloatingActionButton(
//                         onPressed: () {
//                             setState(() {
//                              _itemCount = _itemCount - 1;
//                            });
//                            print(_itemCount);
                            
//                         },
//                         shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(5),
//                         ),
//                         backgroundColor: Colors.white,
//                         child: Icon(Icons.remove,color: Colors.pink),
//                         mini: true,
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
//                         decoration: BoxDecoration(
                         
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         child: Text(
//                           _itemCount.toString(),
//                           style: TextStyle(
//                             fontSize: 20,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
                     
//                       FloatingActionButton(
//                         onPressed: () {
//                            setState(() {
//                              _itemCount = _itemCount + 1;
//                            });
                         
//                         },
//                         shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(5),
//                         ),
//                         backgroundColor: Colors.white,
//                         child: Icon(Icons.add,color: Colors.pink),
//                         mini: true,
//                       ),
//                       SizedBox(width: 3),
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
//                         decoration: BoxDecoration(
//                           color: Colors.red,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Text(
//                           "Add to cart",
//                           style: TextStyle(
                           
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
                    
//                     ],
                    
//                   ),
                  
//                 ),
                
//                 ],
//               ),
//             ],
//           ),
          
         
//         ],
//       ),
//     );
//   }
  
//   void setState( Function() param0) {
    
//     _itemCount = _itemCount + 1;

//   }
// }

class BusketButton extends StatefulWidget {
 

  @override
  State<BusketButton> createState() => _BusketButtonState();
}

class _BusketButtonState extends State<BusketButton> {
  int _itemsInBasket = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          FloatingActionButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Colors.red,
            child: Icon(Icons.shopping_cart_outlined,color: Colors.white),
            mini: true,
          ),
         
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Text(
                _itemsInBasket.toString(),
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class BasketButton extends StatelessWidget {
//   final int itemCount;

//   BasketButton({required this.itemCount});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(10),
//       child: Stack(
//         children: [
//           FloatingActionButton(
//             onPressed: () {},
//             shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.circular(20),
//             ),
//             backgroundColor: Colors.red,
//             child: Icon(Icons.shopping_cart_outlined,color: Colors.white),
//             mini: true,
//           ),
         
//           Positioned(
//             top: 0,
//             right: 0,
//             child: Container(
//               padding: EdgeInsets.all(3),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.white,
//                 boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.2),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: Offset(0, 4),
//                     ),
//                   ],
//               ),
//               child: Text(
//                 itemCount.toString(),
//                 style: TextStyle(
//                   color: Colors.red,
                  
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



