import 'package:flutter/material.dart';

class Reuseble_Contenair extends StatefulWidget {
  const Reuseble_Contenair({Key? key}) : super(key: key);

  @override
  State<Reuseble_Contenair> createState() => _ReReuseble_ContenairState();
}

class _ReReuseble_ContenairState extends State<Reuseble_Contenair> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('Assets/chille.png'),
          ),
          Text('Bell papper red'),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('1 kg,4'),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(child: Icon(Icons.add)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
