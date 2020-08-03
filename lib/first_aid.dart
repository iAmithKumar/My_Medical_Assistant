import 'package:flutter/material.dart';

class FirstAid extends StatefulWidget {

  static const String id = 'first_aid';

  @override
  _FirstAidState createState() => _FirstAidState();
}

class _FirstAidState extends State<FirstAid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[
              IconButton(
                iconSize: 37.0,
                icon: Icon(
                  Icons.business_center,
                  color: Colors.white,
                ),
                onPressed: () {
                  //Add functionality if required.
                },
              )
            ],
            title: Text('First Aid'),
            backgroundColor: Colors.redAccent,
            expandedHeight: 60.0,
          ),
          SliverFixedExtentList(
            itemExtent: 250.0,
            delegate: SliverChildListDelegate(
              [
//                Image(
//                  image: AssetImage("images/medical-1.jpg"),
//                ),
                Text(
                  '\n'
                  ' What are the 3 Ps in first aid?'
                  '\n'
                  '\n'
                  ' 1. Preserve life – stop the person from dying.'
                  '\n'
                  ' 2. Prevent further injury – stop the person '
                  '\n'
                  '      from being injured even more. If possible,'
                  '\n'
                  '      an injured person should not be moved.'
                  '\n'
                  ' 3. Promote recovery – try to help the person '
                  '\n'
                  '      heal their injuries',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
//                Image(
//                  image: AssetImage("images/medical-1.jpg"),
//                ),
                Text(
                  ' The essential first aid kit should include:'
                  '\n'
                  '\n'
                  ' * Anti-bacterial wipes'
                  '\n'
                  ' * Painkillers'
                  '\n'
                  ' * Gauze pads'
                  '\n'
                  ' * Sunscreen'
                  '\n'
                  ' * Medical gloves'
                  '\n'
                  ' * Medical instrument kit'
                  '\n'
                  ' * Sling'
                  '\n'
                  ' * Burn gel'
                  '\n'
                  ' * Antibiotic ointment'
                  '\n'
                  ' * Antiseptic wipes'
                  '\n'
                  ' * First aid instructions'
                  '\n'
                  ' * Tourniquet'
                  '\n',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
//                Text(
//                  '             PROCEDURES',
//                  style: TextStyle(
//                    fontSize: 19.0,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black,
//                  ),
//                ),
//                Image(
//                  image: AssetImage("images/medical-1.jpg"),
//                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
