import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  static const String id = 'Personal_info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400,
        actions: <Widget>[
          IconButton(
            iconSize: 37.0,
            icon: Icon(
              Icons.perm_identity,
              color: Colors.white,
            ),
            onPressed: () {
              //Add functionality if required.
            },
          )
        ],
        title: Text(
          'Personal Info',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
