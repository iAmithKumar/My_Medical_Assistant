import 'package:flutter/material.dart';
import 'sharedPref.dart';
import 'user.dart';

class Demo extends StatefulWidget {
  @override
  DemoView createState() {
    return DemoView();
  }
}

class DemoView extends State<Demo> {
  SharedPref sharedPref = SharedPref();
  User userSave = User();
  User userLoad = User();

  loadSharedPrefs() async {
    try {
      User user = User.fromJson(await sharedPref.read("user"));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: new Text("Loaded!"),
          duration: const Duration(milliseconds: 500)));
      setState(() {
        userLoad = user;
      });
    } catch (Excepetion) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: new Text("Nothing found!"),
          duration: const Duration(milliseconds: 500)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 500.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profilepic.webp'),
              ),
              Container(
                  height: 50.0,
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Name"),
                    onChanged: (value) {
                      setState(() {
                        userSave.name = value;
                      });
                    },
                  )),
              Container(
                  height: 50.0,
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Age"),
                    onChanged: (value) {
                      setState(() {
                        userSave.age = value;
                      });
                    },
                  )),
              Container(
                  height: 50.0,
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(hintText: "gender"),
                    onChanged: (value) {
                      setState(() {
                        userSave.gender = value;
                      });
                    },
                  )),
              Container(
                  height: 50.0,
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Phone-number"),
                    onChanged: (value) {
                      setState(() {
                        userSave.phoneno = value;
                      });
                    },
                  )),
              Container(
                  height: 50.0,
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Blood-Type"),
                    onChanged: (value) {
                      setState(() {
                        userSave.bloodtype = value;
                      });
                    },
                  )),
              Container(
                  height: 50.0,
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(hintText: "weight"),
                    onChanged: (value) {
                      setState(() {
                        userSave.weight = value;
                      });
                    },
                  )),
              Container(
                  height: 50.0,
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(hintText: "height"),
                    onChanged: (value) {
                      setState(() {
                        userSave.height = value;
                      });
                    },
                  )),
              Container(
                  height: 50.0,
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Medical-info"),
                    onChanged: (value) {
                      setState(() {
                        userSave.medicalinfo = value;
                      });
                    },
                  )),
            ],
          ),
        ),
        Container(
          height: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  sharedPref.save("user", userSave);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: new Text("Saved!"),
                      duration: const Duration(milliseconds: 500)));
                },
                child: Text('Save', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  loadSharedPrefs();
                },
                child: Text('Load', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  sharedPref.remove("user");
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: new Text("Cleared!"),
                      duration: const Duration(milliseconds: 500)));
                  setState(() {
                    userLoad = User();
                  });
                },
                child: Text('Clear', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 300.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Name: " + (userLoad.name), style: TextStyle(fontSize: 16)),
              Text("Age: " + (userLoad.age), style: TextStyle(fontSize: 16)),
              Text("Gender: " + (userLoad.gender),
                  style: TextStyle(fontSize: 16)),
              Text("Phone-number: " + (userLoad.phoneno),
                  style: TextStyle(fontSize: 16)),
              Text("Blood-type: " + (userLoad.bloodtype),
                  style: TextStyle(fontSize: 16)),
              Text("Weight: " + (userLoad.weight),
                  style: TextStyle(fontSize: 16)),
              Text("Height: " + (userLoad.height),
                  style: TextStyle(fontSize: 16)),
              Text("Medical-info: " + (userLoad.medicalinfo),
                  style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ],
    );
  }
}
