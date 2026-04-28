import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const NavItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, 
      children: [
        Icon(icon, color: Colors.white, size: 25),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
            height: 1,
          ),
        ),
      ],
    );
  }
}