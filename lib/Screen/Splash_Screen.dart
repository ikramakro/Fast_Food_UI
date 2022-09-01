import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocerry_app_ui/Screen/Intro_Screen.dart';
import 'package:hexcolor/hexcolor.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();

}

class _Splash_ScreenState extends State<Splash_Screen> {
  initState(){
    super.initState();
    _IntroScreen();
  }
  _IntroScreen()async {
    await Future.delayed(Duration(milliseconds: 500,));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>IntroScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor('#1a6e31'),
      ),
      child: Image(image: AssetImage('Assets/circle_leave.png'),),
    );
  }
}
