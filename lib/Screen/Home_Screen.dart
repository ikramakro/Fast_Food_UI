import 'package:flutter/material.dart';
import 'package:grocerry_app_ui/Component/Reuseble_Contenair.dart';
import 'package:hexcolor/hexcolor.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('F3F5F7'),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(children: [
            Row(
              children: [
                CircleAvatar(
                  child: Image(
                    image: AssetImage('Assets/manIcon.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Text('Good Morning'),
                      Text(
                        'Your Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Search here',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 200,
                    width: 335,
                    child: Image(
                      image: AssetImage('Assets/package.png'),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 335,
                    child: Image(
                      image: AssetImage('Assets/package.png'),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 335,
                    child: Image(
                      image: AssetImage('Assets/package.png'),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories🙂',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.orange),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                              backgroundColor: HexColor('F3F5F7'),
                              child: Image(
                                image: AssetImage('Assets/apple.png'),
                              )),
                        ),
                        Text(
                          'Fruites',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                              backgroundColor: HexColor('F3F5F7'),
                              child: Image(
                                image: AssetImage('Assets/broccoli.png'),
                              )),
                        ),
                        Text(
                          'Vagetables',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                              backgroundColor: HexColor('F3F5F7'),
                              child: Image(
                                image: AssetImage('Assets/cheese.png'),
                              )),
                        ),
                        Text(
                          'Diary',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                              backgroundColor: HexColor('F3F5F7'),
                              child: Image(
                                image: AssetImage('Assets/meat.png'),
                              )),
                        ),
                        Text(
                          'Meat',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Best Selling 🔥',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.orange),
                    )
                  ],
                ),
              //Reuseble_Contenair()
              ],
            )
          ]),
        ),
      ),
    );
  }
}
