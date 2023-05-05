import 'package:booktickets/utils/app_layouts.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class  TicketView extends StatelessWidget {
  final bool? isColor;
  var ticket;
  TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayouts.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            /*
            Showing the blue part of ticket
            */
            Container(
              decoration: BoxDecoration(
                color: isColor == null? Colors.orange : Colors.white,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: isColor == null? Styles.headLineStyle3.copyWith(color: Colors.black):Styles.headLineStyle3),

                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children:[
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(

                              builder: (BuildContext context, BoxConstraints constraints) {
                                print("The width is ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate((constraints.constrainWidth()/7).floor(), (index) => SizedBox(
                                    width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                    color: isColor==null? Colors.black: Colors.brown,
                                  ),),
                                  )),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor == null? Colors.black: Colors.brown,),)),
                        ],
                      )),
                      ThickContainer(isColor: true,),
                      Expanded(child: Container()),

                      Text(ticket['to']['code'], style: Styles.headLineStyle3.copyWith(color: isColor== null? Colors.black: Colors.brown)),
                    ],
                  ),
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100, child: Text(ticket['from']['name'], style: Styles.headLineStyle4.copyWith(color: isColor== null? Colors.black: Colors.brown)),
                      ),
                      Text(ticket['flying_time'], style: Styles.headLineStyle4.copyWith(color: isColor == null? Colors.black: Colors.brown),),
                      SizedBox(
                        width: 100, child: Text(ticket['to']['name'],textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: isColor == null? Colors.black: Colors.brown)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            Showing the orange part of ticket
            */
            Container(
              // color: Color(0xFFF37B67)
              color:  isColor == null? Styles.orangeColor: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10 )
                        )
                        )
                      ),
                      
                    ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: 5, height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: isColor == null? Colors.brown: Colors.white,
                              ),
                            ),
                          )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10 )
                            )
                        )
                    ),
                  )
                ],
              ),
            ),
            /*
            Showing the orange part of ticket
            */
            Container(
              decoration: BoxDecoration(
                  color: isColor == null?  Styles.orangeColor: Colors.white,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'],
                          style: Styles.headLineStyle3.copyWith(color: isColor == null? Colors.black: Colors.brown)),
                          Gap(5),
                          Text("Date",
                          style: Styles.headLineStyle3.copyWith(color: isColor==null? Colors.black: Colors.brown)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],
                              style: Styles.headLineStyle3.copyWith(color: isColor == null? Colors.black: Colors.brown)),
                          Gap(5),
                          Text("Depature",
                              style: Styles.headLineStyle3.copyWith(color: isColor == null?  Colors.black: Colors.brown)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),
                              style: Styles.headLineStyle3.copyWith(color: isColor == null? Colors.black: Colors.brown)),
                          Gap(5),
                          Text("Seat",
                              style: Styles.headLineStyle3.copyWith(color: isColor == null? Colors.black: Colors.brown)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
