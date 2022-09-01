import 'package:flutter/material.dart';
import 'package:grocerry_app_ui/Screen/Login_Screen.dart';
import 'package:hexcolor/hexcolor.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Intro(context)
        ],
      ),
    );
  }
}

Widget Intro(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Image(image: AssetImage('Assets/Small_leave.png'))],
        ),
        Container(
          child: Column(
            children: [
              Image(
                image: AssetImage('Assets/small_circle_leave.png'),
              ),
              Text(
                'Get your grocery \n Deliverd to your home',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                  'The best delivery app in town for \ndelivering your daily fresh grocery '),
              SizedBox(
                height: 26,
              ),
              Stack(alignment: Alignment(3.0, 0.0), children: [
                FloatingActionButton.extended(
                    backgroundColor: HexColor('#1a6e31'),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login_Screen()));
                    },
                    label: Text('    Shop Now    ')),
                Image(image: AssetImage('Assets/blur_leave.png')),
              ])
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 200),
          child: Image(image: AssetImage('Assets/Small_leave.png')),
        ),
        Image(image: AssetImage('Assets/Multipule_Fruites.png'))
      ],
    ),
  );
}
