import 'package:flutter/material.dart';
import 'package:spare/themes/color.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkGreen,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: darkGreen,
                      size: 22,
                    ),
                  ),
                ),


                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_rounded,
                      color: darkGreen,
                      size: 22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
