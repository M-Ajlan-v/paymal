import 'package:flutter/material.dart';
import 'package:spare/themes/color.dart';

class SqrButtons extends StatelessWidget {
  final IconData icon;
  final String text;
  SqrButtons({
    super.key,
    required this.text,
    required this.icon
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: primaryGreen,
            border: Border.all(color: lightText,width: 0.2),
            borderRadius: BorderRadius.circular(18)
          ),
          child: Icon(icon, color: darkGreen,size: 28,),
        ),
        SizedBox(height: 6,),
        Text(text, 
        style: TextStyle(
          color: darkGreen,
          fontSize: 13,
          fontWeight: FontWeight(600)
        ),
        ),
      ],
    );
  }
}