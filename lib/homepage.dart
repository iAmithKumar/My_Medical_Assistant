import 'package:flutter/material.dart';
import 'package:insparkproject/Login.dart';
import 'register.dart';


class HomePage extends StatelessWidget {

  static const String id = 'homepage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal.shade300,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: ListTile(
                leading: Hero(
                  tag: 'hero',
                  child: Icon(
                    Icons.assistant,
                    color: Colors.white,
                    size: 40,
                  ),
                ) ,
                title: Text(
                  'Medical Assistant',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 50.0,),
            Container(
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade600,
                borderRadius: BorderRadius.circular(30.0),
              ),
              alignment: Alignment.center,
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.id);
                },
                child: Text(
                    'Log in',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              width: 350.0,
            ),
            SizedBox(height: 20.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange.shade600,
                borderRadius: BorderRadius.circular(30.0),
              ),
              alignment: Alignment.center,
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                child: Text(
                    'Register',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              width: 350.0,
            ),
          ],
        ),
      ),
    );
  }
}
