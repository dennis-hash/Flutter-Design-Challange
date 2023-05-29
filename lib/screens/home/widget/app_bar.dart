import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class App_Bar extends StatelessWidget {
  final IconData leftIcon;

  const App_Bar(this.leftIcon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
        GestureDetector(
          onTap: () {
           
          },
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            child: Icon(leftIcon),
          ),
        
        )

        
      ],)
    );
  }
}