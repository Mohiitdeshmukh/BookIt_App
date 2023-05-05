import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SideMenu extends StatefulWidget {

  String id = "side_menu";

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
            child: Container(
              width: 288,
              height: double.infinity,
              color: Color(0xFF17203A),
              child: SafeArea(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(CupertinoIcons.person),
                      ),
                    )
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
