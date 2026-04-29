import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare/components/navitem.dart';
import 'package:spare/components/squarbuttons.dart';
import 'package:spare/models/transactions.dart';
import 'package:spare/themes/color.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    // datas 
    final transactions = [
      Transaction(title: "Starbucks Coffee", amount: -5.40, dateTime: "Today, 10:23 AM", icon: Icons.shopping_bag),
      Transaction(title: "Sarah Jones", amount: 250.00, dateTime: "Today, 10:23 AM", icon: Icons.shopping_bag),
      Transaction(title: "Electric Bill", amount: -85.40, dateTime: "Today, 10:23 AM", icon: Icons.shopping_bag),
    ];

    return  Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: darkGreen,
        onPressed: (){},
        child: Icon(Icons.crop_free,size: 35, color: Colors.white,),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: SizedBox(
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 4,
          height:58,
          padding: EdgeInsets.only(top: 10, bottom: 0), 
          color: darkGreen,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(icon: Icons.home_outlined, name: 'Home'),
              NavItem(icon: Icons.history_rounded, name: 'History'),
              SizedBox(width: 40,),
              NavItem(icon: Icons.wallet_outlined, name: 'Wallet'),
              NavItem(icon: Icons.person_outline, name: 'Profile'),
            ],
          ),
        ),
      ),
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('lib/images/profile.png'),
                        radius: 23,
                      ),
                      SizedBox(width: 8,),
                      Text("ST Racson",
                      style: TextStyle(
                        color: darkGreen,
                        fontSize: 20,
                        fontWeight: FontWeight(900)
                      ),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: primaryGreen,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.notifications_outlined, size: 25,),)
                ],
              ),
              SizedBox(height: 20,),
              Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: [
                     primaryGreen,
                     lightText
                   ],
                   begin: AlignmentGeometry.topCenter,
                   end: AlignmentGeometry.bottomCenter
                  )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.wallet, color: Colors.white, size: 16,),
                            SizedBox(width: 6,),
                            Text("Total Balance", style: TextStyle(
                              color: Colors.white
                            ),
                            )
                          ],
                        ),
                
                        Text("\$24,500.80",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight(700)
                        ),                      
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text("**** 8823",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            ),
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF9FC268),
                                borderRadius: BorderRadius.circular(40)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                                child: Row(
                                  children: [
                                    Icon(Icons.add, color: Colors.white,size: 14,),
                                    SizedBox(width: 8,),
                                    Text("Add Money",
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5,)
                          ],
                        ),
                
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SqrButtons(text: 'Send', icon: Icons.send),
                    SqrButtons(text: 'Receive', icon: Icons.qr_code_2),
                    SqrButtons(text: 'Scan QR', icon: Icons.qr_code_scanner_outlined),
                    SqrButtons(text: 'More', icon: Icons.grid_view),
                  ],
                ),  
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: darkGreen,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Get 5% Cashback",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight(500)
                          ),
                          ),
                          Text("On your first utility bill payment",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 11
                          ), 
                          ),
                        ],
                      ),
                      Icon(Icons.chevron_right, color: Colors.white,size: 35,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Transactions",
                  style: TextStyle(
                    color: darkGreen,
                    fontSize: 19,
                    fontWeight: FontWeight(700)
                  ),
                  ),
                  Text("See All",
                  style: TextStyle(
                    color: darkGreen,
                    fontSize: 14,
                    fontWeight: FontWeight(800)
                  ),
                  ),
                ],
              ),
              
              Expanded(
                child: ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (context, index){
                    final tx =transactions[index];
                    bool isCredit;
                    String amnt;  
                    Color txtcolor;                  
                    if (tx.amount > 0) {
                      isCredit = true;  
                      txtcolor = Colors.green;
                    } else {
                      isCredit = false;
                      txtcolor = Colors.black;  
                    }  
                    if (isCredit) {
                      amnt = "+\$" + tx.amount.abs().toString();
                    } else {
                      amnt = "-\$" + tx.amount.abs().toString();
                    }                                      
                    
                  

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Color(0xFFEAF5BF),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: ListTile(
                          dense: true,
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: primaryGreen,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(tx.icon),
                          ),
                          title:Text(tx.title, style: TextStyle(fontWeight: FontWeight(700),fontSize: 14),),
                          subtitle: Text(tx.dateTime, style: TextStyle(fontSize: 11, color: Colors.grey),),
                          trailing: Text(amnt, style: TextStyle(
                            color: txtcolor,fontSize: 16,fontWeight: FontWeight(800)
                          ),),
                        ),
                      ),
                    );
                  }
                 )
              
              )


            ],
          ),
        ),
      ),
    );
  }
}