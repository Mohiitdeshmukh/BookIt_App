import 'package:booktickets/screens/bottom_bar.dart';
import 'package:booktickets/screens/home_screen.dart';
import 'package:booktickets/screens/login_screen.dart';
import 'package:booktickets/screens/registration_screen.dart';
import 'package:booktickets/screens/search_screen.dart';
import 'package:booktickets/screens/side_menu.dart';
import 'package:booktickets/screens/welcome_screen.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
      ),
      initialRoute: WelcomeScreen().id,
      routes: {
        WelcomeScreen().id: (context) =>WelcomeScreen(),
        LoginScreen().id: (context) =>LoginScreen(),
        HomeScreen().id: (context) =>HomeScreen(),
        RegistrationScreen().id: (context) =>RegistrationScreen(),
        SearchScreen().id: (context)=> SearchScreen(),
        BottomBar().id: (context)=> BottomBar(),
        SideMenu().id: (context)=> SideMenu(),
      },
    );
  }
}
