import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: AppointmentPage(),
    ),
  );
}
class AppointmentPage extends StatelessWidget {

  static const String id = 'appointment';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'APPOINTMENTS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
