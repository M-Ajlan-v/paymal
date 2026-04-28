import 'package:flutter/material.dart';
import 'package:spare/components/navItem.dart';
import 'package:spare/themes/color.dart';



class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: SizedBox(
        height: 50,
        width: 50,
        child: FloatingActionButton(onPressed: (){},
        
        shape: CircleBorder(),
        backgroundColor: darkGreen,
        child: Icon(Icons.crop_free_outlined, color: Colors.white, size: 33,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
  height: 50,
  color: darkGreen,
  shape: CircularNotchedRectangle(),
  notchMargin: 5,

  child: Row(
    crossAxisAlignment: CrossAxisAlignment.stretch, 
    children: [
      // LEFT SIDE
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch, 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            NavItem(icon: Icons.home_outlined, label: 'Home'),
            NavItem(icon: Icons.history, label: 'History'),
          ],
        ),
      ),

      const SizedBox(width: 60),

      // RIGHT SIDE
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch, 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            NavItem(icon: Icons.account_balance_wallet, label: 'Wallet'),
            NavItem(icon: Icons.person, label: 'Profile'),
          ],
        ),
      ),
    ],
  ),
),
    );
  }
}