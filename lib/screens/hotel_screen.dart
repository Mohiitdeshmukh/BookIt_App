import 'package:booktickets/utils/app_layouts.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic>hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Hotel price is ${hotel['price']}");
    final Size = AppLayouts.getSize(context);
    return Container(
      width: Size.width* 0.7,
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 20,
            spreadRadius: 1,
          )
        ]

      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Styles.primaryColor,
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/${hotel['image']}"
                ),
              ),
            ),
          ),
          Gap(10),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor, fontSize: 28),
          ),
          Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color:Colors.white, fontSize: 23),
          ),
          Gap(8),
          Text(
            '\₹${hotel['price']}/night',
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
