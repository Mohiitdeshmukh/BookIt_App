import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {

  String id = 'profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.only(left:20, top: 60, right: 20),
        children: [
          Gap(30),
          Text("Hi User!", style: Styles.headLineStyle1.copyWith(fontSize: 40),),
          Gap(30),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Column(
              children: [
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10, ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child:
                   Padding(
                     padding: const EdgeInsets.only(left: 15),
                     child: Text("Profile",style: Styles.textStyle.copyWith(color: Colors.brown),),
                   )
                ),
                Gap(7),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Wallet",style: Styles.textStyle.copyWith(color: Colors.brown),),
                  )),
                Gap(7),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Cards",style: Styles.textStyle.copyWith(color: Colors.brown),),
                  )),
                Gap(7),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child:
                 Padding(
                   padding: const EdgeInsets.only(left: 15),
                   child: Text("My Bookings",style: Styles.textStyle.copyWith(color: Colors.brown),),
                 )),
                Gap(7),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Refer & Earn",style: Styles.textStyle.copyWith(color: Colors.brown),),
                  )),
                Gap(7),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Offers",style: Styles.textStyle.copyWith(color: Colors.brown),),
                  )),
                Gap(7),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Help",style: Styles.textStyle.copyWith(color: Colors.brown),),
                  )),
                Gap(7),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Call Support",style: Styles.textStyle.copyWith(color: Colors.brown),),
                  )),
                Gap(7),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("About Us",style: Styles.textStyle.copyWith(color: Colors.brown),),
                  )),
                Gap(7),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Settings",style: Styles.textStyle.copyWith(color: Colors.brown),),
                  )),
                Gap(7),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child:
                 Padding(
                   padding: const EdgeInsets.only(left: 15),
                   child: Text("Payments",style: Styles.textStyle.copyWith(color: Colors.brown),),
                 )
                ),
                Gap(7),
                Container(
                    width: 400,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300],
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Security",style: Styles.textStyle.copyWith(color: Colors.brown),),
                    )
                ),
                Gap(7),
                Container(
                    width: 400,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300],
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Feedback",style: Styles.textStyle.copyWith(color: Colors.brown),),
                    )
                ),
              ],
            ),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
          ),
          Gap(15),
          // Container(
          //   padding: EdgeInsets.symmetric(vertical: 13),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(15),
          //     color: Colors.white,
          //   ),
          //   child:
          //   Center(child:
          //     InkWell(
          //       onTap: (){
          //         print("You're Tapped!");
          //       },
          //       child: Text("Cards"),
          //     ),),
          // ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.redAccent,
            ),
            child:
            Center(child:
            InkWell(
                onTap: (){
                  print("You're Tapped!");
                },
                child:Text("Logout",style: Styles.textStyle.copyWith(color: Colors.white),)),

            ),

          ),
          Gap(20),
        ],
      ),
    );
  }
}
