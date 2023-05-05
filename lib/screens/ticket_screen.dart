import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {

  String id = 'ticket_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 25),
            children: [
              Gap(50),
              Text("Tickets", style: Styles.headLineStyle1.copyWith(fontSize: 35)),
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
                      Center(child: Text("Upcoming",style: Styles.textStyle.copyWith(color: Colors.brown),)),
                    ),

                    Row(
                      children: [
                        Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 11),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.orangeAccent.shade400


                            ,
                          ),
                          child:
                          Center(
                              child:
                              Text("Previous", style: Styles.textStyle.copyWith(color: Colors.brown),)
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: TicketView(ticket: ticketList[1], isColor: true,),
              ),
              Gap(10),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Your E-Tickets for Upcoming Flights",style: Styles.headLineStyle3.copyWith(fontSize: 19),),
              ),
              Gap(20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),
                ),
              ),
              Gap(25),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(" ' Best wishes on your trip &\n   have a pleasant journey ♥️ ' ",style: Styles.headLineStyle3.copyWith(fontSize: 21),),
              ),
              Gap(5),
              Container(
                padding: EdgeInsets.only(left: 200),
                child: Text("- Team BookIt",style: Styles.headLineStyle3.copyWith(fontSize: 18),),
              ),
            ],
          )
        ],
      )
    );
  }
}
