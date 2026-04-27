import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare/screens/secondscreen.dart';
import 'package:spare/themes/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    void onTap(){
      Navigator.push(context, 
      MaterialPageRoute(builder: (context) => const SecondPage()),
      );
    }

    return Scaffold(
      backgroundColor: primaryGreen,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:24),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          
                          color: darkGreen,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons. account_balance_wallet_outlined, color: Colors.white,size: 24,),
                      ),
                      const SizedBox(width: 8,),
                      Text(
                        "Paymal",
                        style: TextStyle(
                          height: 1.3,
                          fontSize: 28,
                          fontWeight: FontWeight(800),
                          color: darkGreen
                        )
                      )
                    ],
                  ),
              ),
              Image.asset('lib/images/wallet.png', height: 300,),
              
              
              Text(
                "The Smartest Way to Manage Money",
                style: GoogleFonts.poppins(
                  color: darkGreen,
                  fontSize: 28,
                  fontWeight: FontWeight(700)
                ),
                textAlign: TextAlign.center,
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text("Send, recieve and track your expenses in one secure place. Fast, simple, and reliable.",
                style: GoogleFonts.poppins(
                  color: lightText,
                  fontSize: 14
                ),
                textAlign: TextAlign.center,
                ),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: darkGreen,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text("Create Account",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: Text("Sign in",
                      style: GoogleFonts.poppins(
                        color: darkGreen,
                        fontSize: 16,
                        fontWeight: FontWeight(600)
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Text.rich(
                    TextSpan(
                      text: "By continuing you agree to our ",
                      style: GoogleFonts.poppins(
                        color: lightText,
                        fontSize: 12
                      ),
                      children: [
                        TextSpan(
                          text: "terms",
                          style: GoogleFonts.poppins(
                            color: darkGreen,
                            fontWeight:FontWeight.w500
                          )
                        ),
                        TextSpan(
                          text: " & "
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: GoogleFonts.poppins(
                            color: darkGreen,
                            fontWeight: FontWeight.w600
                          )
                        )
                      ]
                    )
                  ),
                  SizedBox(
                    height: 5,
                  )
            ],
          ),
        ),
      ),
    );
  }
}