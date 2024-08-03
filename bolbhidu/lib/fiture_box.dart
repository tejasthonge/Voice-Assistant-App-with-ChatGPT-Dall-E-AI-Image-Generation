

import 'package:bolbhidu/pallete.dart';
import 'package:flutter/material.dart';

class FitureBoxWidge extends StatelessWidget {
  final Color color;
  final String headerText;
  final String discriptionText;
  const FitureBoxWidge({super.key, required this.color, required this.headerText, required this.discriptionText});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20,).copyWith( 
        left: 15
      ),
      margin: EdgeInsets.symmetric( 
        vertical: 10,
        horizontal: 33,
        
      ),
      decoration: BoxDecoration( 

        color: color,
        borderRadius: BorderRadius.circular(15)
      ),

      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 

          Text(
            headerText,
            style:const   TextStyle(
              fontFamily: 'Cera Pro',
              fontSize: 18,
              color: Pallete.blackColor,
               fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 3,),
          Text(
            discriptionText,
            style:const   TextStyle(
              fontFamily: 'Cera Pro',
              color: Pallete.blackColor,
              ),
          )
        ],
      ),

    );
  }
}