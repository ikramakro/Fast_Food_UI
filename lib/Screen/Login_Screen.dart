import 'package:flutter/material.dart';
import 'package:grocerry_app_ui/Screen/Home_Screen.dart';
import 'package:hexcolor/hexcolor.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  String? _dropdownvalue, newvalue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Icon(Icons.arrow_back_ios),
                ),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Container(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('Assets/small_circle_leave.png'),
                  ),
                  const Text(
                    'Enter Your Mobile Number',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const Text('We will send you a verification sms'),
                  Row(
                    children: [
                      DropdownButton(
                          value: _dropdownvalue,
                          items: const [
                            DropdownMenuItem(
                              child: Text('+44'),
                              value: '+44',
                            ),
                            DropdownMenuItem(
                              child: Text('+92'),
                              value: '+91',
                            ),
                            DropdownMenuItem(
                              child: Text('+93'),
                              value: '+94',
                            ),
                            DropdownMenuItem(
                              child: Text('+44'),
                              value: '+44',
                            ),
                          ],
                          onChanged: (newvalue) {}),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(),
                        ),
                      ),
                    ],
                  ), SizedBox(height: 40,),
                  FloatingActionButton.extended(
                      backgroundColor: HexColor('#1a6e31'),
                      label: Text('         Continue          '),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => Home_Screen()));
                      }),SizedBox(height: 20,),
                  Text(
                      'By clicking on continue you are agreeing \nto our term and condition')
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
