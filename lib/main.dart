import 'package:flutter/material.dart';
import 'package:insparkproject/Login.dart';
import 'homepage.dart';
import 'register.dart';
import 'homescreen.dart';
import 'storedocs.dart';
import 'perinfo.dart';
import 'bharat.dart';
import 'first_aid.dart';
import 'remainder_page.dart';

void main() => runApp(
      MedicalReminder(),
    );

class MedicalReminder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => LoginPage(),
        HomePage.id: (context) => HomePage(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        SingleImageUpload.id: (context) => SingleImageUpload(),
        PerInfo.id: (context) => PerInfo(),
        RemainderPage.id: (context) => RemainderPage(),
        FirstAid.id: (context) => FirstAid(),
        DetailPage.id: (context) => DetailPage(),
        //AppointmentPage.id : (context) => AppointmentPage(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.indigo.shade50,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Medical Assistant',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.teal.shade50,
              ),
            ),
          ),
        ),
        body: WelcomeScreen(),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 100),
          child: Image.asset("images/welcomeimage.jpg"),
        ),
        SizedBox(
          height: 40,
        ),
        FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, HomePage.id);
          },
          child: Text(
            'Get Started >',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: Colors.teal.shade500,
            ),
          ),
        ),
      ],
    );
  }
}
