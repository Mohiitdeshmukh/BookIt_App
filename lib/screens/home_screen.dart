import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/side_menu.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {


  String id = 'home_screen';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Row(
                        //   children: [
                        //     Icon(CupertinoIcons.map_pin, color: Colors.deepOrangeAccent,size: 28,),
                        //     Text(
                        //       "Home ", style: Styles.headLineStyle3.copyWith(fontSize: 27, color: Colors.brown),
                        //     ),
                        //     Icon(CupertinoIcons.chevron_down),
                        //     Gap(250),
                        //   ],
                        // ),
                        // Row(
                        //   children: [
                        //     Text(
                        //       "        FLat no.5, C-1 building, Saranagar, N-1 Cidco, A.. ", style: Styles.headLineStyle3.copyWith(fontSize: 13, color: Colors.brown),
                        //     ),
                        //   ],
                        // ),
                        Gap(30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          child: Text(
                            "Welcome.", style: Styles.headLineStyle1.copyWith(fontSize: 34),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: 22, vertical: 7),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       // Icon(CupertinoIcons.map_pin, color: Colors.deepOrangeAccent,size: 28,),
                //       Row(
                //         children: [
                //           Icon(CupertinoIcons.map_pin, color: Colors.deepOrangeAccent,size: 28,),
                //           Text("Home", style: Styles.headLineStyle3.copyWith(fontSize: 27)),
                //           Icon(CupertinoIcons.chevron_down),
                //         ],
                //       ),
                //       InkWell(
                //           onTap: (){
                //             print("You're Tapped!");
                //           },
                //           child: Text("View All", style: Styles.textStyle.copyWith(color: Colors.brown))
                //       ),
                //     ],
                //   ),
                // ),
                Gap(2),
              ],
            ),
    ),
          Gap(30),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFF4F6FD),
            ),
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
            child: Row(
              children: [
                const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Colors.deepOrangeAccent),
                Gap(6),
                Text("Search for hotels,flights",
                  style: Styles.headLineStyle4,
                )
              ],
            ),
          ),
          Gap(40),
          // Column(
          //   children: [
          //     Container(
          //       padding: EdgeInsets.symmetric(horizontal: 22, vertical: 7),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text("Upcomig Flights", style: Styles.headLineStyle2,),
          //           InkWell(
          //               onTap: (){
          //                 print("You're Tapped!");
          //               }
          //               child: Text("View All", style: Styles.textStyle.copyWith(color: Colors.brown))
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),
            ),
          ),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headLineStyle2,),
                InkWell(
                    onTap: (){
                      print("You're Tapped!");
                    },
                    child: Text("View All", style: Styles.textStyle.copyWith(color: Colors.brown))),
              ],
            ),
          ),
          Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
              ),
    ),
    ],
    ),
    );
  }
}

class FirebaseUser {
  Object? get email => null;
}
