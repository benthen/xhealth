import 'package:flutter/material.dart';
import 'package:project/hotline/hotline.dart';
import 'package:project/common/theme_helper.dart';
import 'package:project/pages/homepage/homepage.dart';
import 'package:project/pages/login_page.dart';

class Result extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Result();
  }
}

class _Result extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "XHealth",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold),
          ),
          elevation: 0.5,
          iconTheme: const IconThemeData(color: Colors.white),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor,
                ])),
          ),
        ),
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                  0.0,
                  1.0
                ],
                    colors: [
                  Theme.of(context).primaryColor.withOpacity(0.2),
                  Theme.of(context).accentColor.withOpacity(0.5),
                ])),
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 1.0],
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).accentColor,
                      ],
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "Menu",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                ListTile(
                  leading: const Icon(Icons.home_outlined),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text('Hotline'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HotlinePage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.home_outlined),
                  title: const Text('Logout'),
                  onTap: () {
                    showDialog(
                        builder: (ctxt) {
                          return AlertDialog(
                              title: const Text("Logout"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Do you Really want to logout?"),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child: Text("Cancel"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                      ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child: Text("Logout"),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginPage()));
                                        },
                                      )
                                    ],
                                  ),
                                ],
                              ));
                        },
                        context: context);
                  },
                ),
                const Divider(color: Colors.black54),
                //context: context);
              ],
            ),
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 251, 244, 179),
          child: Column(children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(20.0),
              child: Text("Congratulation! You have finished the test!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text("Suggestion:", style: TextStyle(fontSize: 20)),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 222, 237, 182),
                    Color.fromARGB(255, 162, 238, 81)
                  ],
                  stops: [0, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 130, 130, 130),
                    blurRadius: 3,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                      "- Aim for 30 minutes of moderately-intense exercise. \n- Avoid alcohol and illegal drugs. \n- Eat a varied and nutritious diet. \n- Seek out people for friends who are positive, supportive, and show that they care about you",
                      style: TextStyle(color: Color.fromARGB(255, 4, 4, 4))),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                  "To get more help, click here to navigate to helpline page",
                  style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 10),
            Container(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 243, 173, 43),
                    onPrimary: Color.fromARGB(255, 243, 241, 113),
                    shadowColor: Colors.grey,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(100, 50), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HotlinePage(),
                        ));
                  },
                  child: Text(
                    "Helpline",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ]),
        ));
  }
}
