import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:intl/intl.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.light(),
      home: DetailPage(),
    ),
  );
}

class DetailPage extends StatefulWidget {

  static const String id = 'remainderpage';

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  DateTime _date = DateTime.now();
  TimeOfDay _time =TimeOfDay.now();
  Future<Null> selectDate(BuildContext context) async{
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(1990),
        lastDate: DateTime(2100),
    );
    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
      });
    }
  }
  Future<Null> selectTime(BuildContext context) async{
    final TimeOfDay timePicked =await showTimePicker(context: context,
        initialTime: _time,
    );
    if (timePicked != null && timePicked != _time) {
      setState(() {
        _time = timePicked;
      });
    }
  }
  final DateFormat dateFormat =DateFormat('dd-MM-yyyy');
  String format(BuildContext context){
    assert(debugCheckHasMediaQuery(context));
    assert(debugCheckHasMaterialLocalizations(context));
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);
    return localizations.formatTimeOfDay(
      this._time,
      alwaysUse24HourFormat: MediaQuery.of(context).alwaysUse24HourFormat,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Appointments',
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter Doctor name',
                icon: Icon(
                  Icons.perm_identity,
                ),)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: kTextFieldDecoration.copyWith(hintText: 'Enter Doctor Details',
                    icon: Icon(
                      Icons.work,
                    ),)
              ),
            ),
           Card(
             color: Colors.white,
             margin: EdgeInsets.symmetric(vertical: 10.0 ,horizontal: 25.0),
             child: ListTile(
               onTap: (){
               selectDate(context);
             },
               leading: Icon(
                 Icons.date_range,
                 color: Colors.teal,
               ),
               title: Text(
                 dateFormat.format(_date),
                 style: TextStyle(
                   color: Colors.teal,
                   fontSize: 20.0
                 ),
               ),
             ),
           ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0 ,horizontal: 25.0),
              child: ListTile(
                onTap: (){
                  selectTime(context);
                },
                leading: Icon(
                  Icons.alarm,
                  color: Colors.teal,
                ),
                title: Text(
                  _time.toString(),
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 20.0
                  ),
                ),
              ),

            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(15.0),
                  height: 50.0,
                  width: 100.0,
                  child: FlatButton(
                    color: Colors.blueGrey,
                    onPressed: (){

                    },
                    child: Text(
                      'save',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),

      ),
    );
  }
}
