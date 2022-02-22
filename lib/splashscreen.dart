import 'dart:async';
import 'package:flutter/material.dart';
import 'package:help_wo/Home.dart';
import 'package:google_fonts/google_fonts.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    // MediaQueryData queryData;
    // queryData = MediaQuery.of(context);

    return Scaffold(
      body: Container(
      color: const Color.fromRGBO(255, 0, 0, 100),
      child: const Center(
        child: Text(
          'Help Wo',
            textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white,fontSize: 60.0),
          //style: GoogleFonts.lato()
        ),
      ),),
    );
  }

  void startTimer() {
    Timer(const Duration(seconds: 5), () {
      //this is the time it stays on the screen before it move to the other screen
      //Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => _createRoute()));
      Navigator.of(context).push(_createRoute());
    });
  }
}

Route _createRoute() {
  //this is for the animation
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => home(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
