import 'package:flutter/material.dart';
import 'remainder_page.dart';

void main() {
  runApp(
    RemainderPage(),
  );
}
class RemainderPage extends StatelessWidget {

  static const String id = 'reminderpage';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFFBE5FBA),
        accentColor: Color(0xFFBE5FBA),
        scaffoldBackgroundColor: Color(0xFFFFFFFF)
      ),
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remainder Page'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child:FlatButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)
                    {
                      return DetailPage();
                    },
                    )
                );
              },
              child: ReusableCard(
               colour: Color(0xFFF9F9F9),
                cardChild: Center(
                  child: Text(
                    'MEDICATIONS',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color(0xFF8D8E98)
                        )
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child:FlatButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)
                {
                  return DetailPage();
                },
                )
                );//push
              },
              child: ReusableCard(
                colour:Color(0xFFF9F9F9),
                cardChild: Center(
                  child: Text(
                      'APPOINTMENTS',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Color(0xFF8D8E98),
                      ),
                  ),
                ),
              ),
            )
          )
        ],
      )
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour,this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color:colour,
      ),
    );
  }
}
