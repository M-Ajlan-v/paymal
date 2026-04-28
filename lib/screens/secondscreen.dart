import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare/screens/thirdpage.dart';
import 'package:spare/themes/color.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkGreen,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
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
                  Text(
                    "Payment Method",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight(800),
                      fontSize: 22,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
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
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('lib/images/maestro.png', width: 50),
                  Image.asset('lib/images/visa.png', width: 50),
                  Image.asset('lib/images/paypal.png', width: 30),
                  Image.asset('lib/images/applepay.png', width: 40),
                ],
              ),
            ),

            // master card
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Master Card",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight(500),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                color: primaryGreen,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      //first row
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // text column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PREMIUM CARD",
                              style: GoogleFonts.roboto(
                                color: lightText,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              "SCALE FINANCE",
                              style: GoogleFonts.roboto(
                                color: darkGreen,
                                fontSize: 18,
                                fontWeight: FontWeight(700),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.credit_card_rounded,
                          color: darkGreen,
                          size: 35,
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      //second row
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // text column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CARD NUMBER",
                              style: GoogleFonts.roboto(
                                color: lightText,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              "4532 .... .... 8901",
                              style: GoogleFonts.roboto(
                                color: darkGreen,
                                fontSize: 22,
                                fontWeight: FontWeight(700),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      //third
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // text column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "VALID UPTO",
                              style: GoogleFonts.roboto(
                                color: lightText,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              "12/28",
                              style: GoogleFonts.roboto(
                                color: darkGreen,
                                fontSize: 14,
                                fontWeight: FontWeight(700),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CVV",
                              style: GoogleFonts.roboto(
                                color: lightText,
                                fontSize: 10,
                              ),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: lightText,
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: darkGreen,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cardholder Name",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 2),
                      TextField(
                        controller: TextEditingController(text: "Md Faisal"),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight(700),
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: lightText),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: lightText),
                          ),
                          contentPadding: EdgeInsets.all(12),

                          isDense: true,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CVV", style: TextStyle(color: Colors.white)),
                      SizedBox(height: 2),
                      TextField(
                        controller: TextEditingController(text: "123"),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight(700),
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: lightText),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: lightText),
                          ),
                          contentPadding: EdgeInsets.all(12),
                          isDense: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card Number",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 2),
                      TextField(
                        controller: TextEditingController(
                          text: "4532 **** **** ****",
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight(700),
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: lightText),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: lightText),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 12,
                          ),
                          isDense: true,
                          suffix: Icon(
                            Icons.credit_card_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 90),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ThirdPage(),));
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  "Pay",
                  style: GoogleFonts.roboto(
                    color: darkGreen,
                    fontSize: 30,
                    fontWeight: FontWeight(600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
