import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final String name;

  NavItem({
    super.key,
    required this.icon,
    required this.name
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 30, color: Colors.white,),
        SizedBox(height: 4,),
        Text(name, style: TextStyle(
          fontSize: 10,
          color: Colors.white
        ),
        )
      ],
    );
  }
}