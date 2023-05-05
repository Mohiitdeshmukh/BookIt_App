import 'package:booktickets/utils/app_layouts.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import '../utils/app_info_list.dart';
import '../utils/app_styles.dart';
import 'bottom_bar.dart';


class  SearchScreen extends StatelessWidget {

   String id = 'search_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:20, vertical: 40),
        children: [
          Gap(40),
          Text("What are you looking for?",style: Styles.headLineStyle1.copyWith(fontSize: 35)),
          Gap(30),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  padding: EdgeInsets.symmetric(vertical: 11),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orangeAccent.shade100,
                  ),
                  child:
                  Center(child: Text("Airline Tickets",style: Styles.textStyle.copyWith(color: Colors.grey[800]),)),
                ),

                Row(
                  children: [
                    Container(
                      width: 150,
                      padding: EdgeInsets.symmetric(vertical: 11),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.orangeAccent.shade200,
                      ),
                      child:
                      Center(
                          child:
                          Text("Hotels", style: Styles.textStyle.copyWith(color: Colors.brown),)
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Gap(40),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 390,
                    padding: EdgeInsets.symmetric(vertical: 11),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child:
                    Center(
                        child: Row(
                          children: [
                            Gap(7),
                            Icon(Icons.flight_takeoff_rounded, color: Colors.brown,),
                            Gap(7),
                            Text("Enter Source", style: Styles.textStyle.copyWith(color: Colors.brown),)
                          ],
                        )
                    ),
                  ),
                ],
              ),
              Gap(3),
              Row(
                children: [
                  Container(
                    width: 390,
                    padding: EdgeInsets.symmetric(vertical: 11),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child:
                    Center(
                        child: Row(
                          children: [
                            Gap(7),
                            Icon(Icons.flight_land_rounded, color: Colors.brown,),
                            Gap(7),
                            Text("Enter Destination", style: Styles.textStyle.copyWith(color: Colors.brown),)
                          ],
                        ),
                    ),
                  ),
                ],
              ),
              Gap(3),
              Row(
                children: [
                  Container(
                    width: 390,
                    padding: EdgeInsets.symmetric(vertical: 11),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child:
                    Center(
                        child: Row(
                          children: [
                            Gap(7),
                            Icon(Icons.calendar_month_rounded, color: Colors.brown,),
                            Gap(7),
                            Text("Enter Date", style: Styles.textStyle.copyWith(color: Colors.brown),)
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(20),
          Column(
            children: [
              Container(
                width: 170,
                padding: EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blueAccent[700],
                ),
                child:
                Center(
                    child:
                    Text("Find Tickets", style: Styles.textStyle.copyWith(color: Colors.white),)
                ),
              )
            ],
          ),
          Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 200,
                width: 142,
                padding: EdgeInsets.only(top: 25, left: 10, right: 5),
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Travel\nwith us in this festive season", style: Styles.headLineStyle2,),
                    Gap(17),
                    InkWell(
                      onTap: (){
                        print("You're Tapped!");
                      },
                      child:
                      Text("Explore >",style: Styles.textStyle.copyWith(fontSize: 15, color: Colors.blueGrey),),
                    ),
                    Gap(10),
                  ],
                ),
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       width: 40,
              //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(90),
              //         color: Colors.orange[200],
              //       ),
              //       child: Text("⚲",style: Styles.headLineStyle3.copyWith(color: Colors.brown,)),
              //     ),
              //   ],
              // ),
              // Gap(20),
              // Center(child: Transform.rotate(angle: 3.1, child: Icon(Icons.local_airport_rounded, color: Colors.brown,size: 30,),)),
              // Gap(20),
              // Center(child: Transform.rotate(angle: 3.1, child: Icon(Icons.local_airport_rounded, color: Colors.brown,size: 40,),)),
              // Gap(20),
              // Center(child: Transform.rotate(angle: 3.1, child: Icon(Icons.local_airport_rounded, color: Colors.brown, size: 50,),)),
              // Gap(20),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       width: 40,
              //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(90),
              //         color: Colors.orange[200],
              //       ),
              //       child: Text("⚲",style: Styles.headLineStyle3.copyWith(color: Colors.brown)),
              //     ),
              //   ],
              // ),

              Column(
                children: [
                  Container(
                    height: 200,

                    width: 142,
                    padding: EdgeInsets.only(left: 15, right: 5, top: 25),
                    decoration: BoxDecoration(
                      color: Color(0xFF3AB8B8),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Get 10%\noff on your next flight booking!",style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                       Gap(17),
                        InkWell(
                          onTap: (){
                            print("You're Tapped!");
                          },
                          child:
                          Text("Explore >",style: Styles.textStyle.copyWith(fontSize: 15, color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(20),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 65,
                  width: 390,
                  padding: EdgeInsets.only(left: 30,right: 10,top: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFFE7E6D),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text("Save up to ₹1000 in Delhi & North India",style: Styles.headLineStyle2.copyWith(color: Colors.white,fontSize: 17),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
