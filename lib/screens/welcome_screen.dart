import 'package:booktickets/screens/login_screen.dart';
import 'package:booktickets/screens/registration_screen.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {

  String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  void initState(){
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this
    );
    var animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward(from:1.0);

    animation.addStatusListener((status) {
      print(status);
    });

    controller.addListener(() {
      print(controller.value);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent.withOpacity(controller.value),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: [
                    Text("BookIt", style: Styles.headLineStyle1.copyWith(fontSize: 39),),
                    Text(""),
                  Gap(15),
                  // Hero(
                  //   tag: 'logo',
                  //   child: Container(
                  //     height: 50,
                  //     child:
                  //     Image.asset('assets/images/register.png'),
                  //   ),
                  // )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            Gap(12),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 5.0,
                  color: Color(0xFFFFFFDE),
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                     Navigator.pushNamed(context, LoginScreen().id); //Go to login screen.
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Log In',
                    ),
                  ),
                ),
              ),

              // Padding(
              //     padding: EdgeInsets.symmetric(vertical: 10.8),
              //   child: Material(
              //     color: Color(0xFFF9F2ED),
              //     borderRadius: BorderRadius.circular(30.0),
              //     elevation: 5.0,
              //     child: MaterialButton(
              //       onPressed: () {
              //         Navigator.pushNamed(context, RegistrationScreen().id);
              //       },
              //       minWidth: 200.0,
              //       height: 42.0,
              //       child: Text(
              //         "Register",
              //       ),
              //     ),
              //   ),
              // )
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Material(
                  color: Color(0xFFF9F2ED),
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegistrationScreen().id);//Go to registration screen.
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Register',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
