import 'package:flutter/material.dart';
import 'package:insparkproject/bharat.dart';
import 'package:insparkproject/first_aid.dart';
import 'package:insparkproject/perinfo.dart';
import 'package:insparkproject/remainder_page.dart';
import 'package:insparkproject/storedocs.dart';


class HomeScreen extends StatelessWidget {

  static const String id = 'homescreen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.menu,
                      size: 40.0,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.face,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20.0,left: 10.0),
                        child: Text(
                          'MEDICAL ASSISTANT',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'How can we help you?',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, DetailPage.id);
                        },
                        child: Text(
                          'Add your appointment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        'Add your medicine',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, DetailPage.id);
                        },
                        child: Text(
                          'Add your reminder',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.orangeAccent,
                            ),
                            width: 200.0,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'My Information',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Expanded(
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, PerInfo.id);
                                      },
                                      child: Icon(
                                        Icons.account_circle,
                                        size: 70.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.blue,
                            ),
                            //height: 100.0,
                            width: 200.0,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'First Aid',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Expanded(
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, FirstAid.id);
                                      },
                                      child: Icon(
                                        Icons.accessibility,
                                        size: 70.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Appointments',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Expanded(
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, RemainderPage.id);
                                      },
                                      child: Icon(
                                        Icons.hotel,
                                        size: 70.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //height: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.green,
                            ),
                            width: 200.0,
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Medical History',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Expanded(
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context,SingleImageUpload.id);
                                      },
                                      child: Icon(
                                        Icons.assignment,
                                        size: 70.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //height: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.redAccent,
                            ),
                            width: 200.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
