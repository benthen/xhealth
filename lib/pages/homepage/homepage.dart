import 'package:flutter/material.dart';
import 'package:project/pages/login_page.dart';
import 'package:project/common/theme_helper.dart';
import 'package:project/story/story_page.dart';
import 'package:project/test/test_ui.dart';
import 'package:project/hotline/hotline.dart';
import 'package:project/story/history.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavigationBar();
  }
}

class _NavigationBar extends State<HomePage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "XHealth",
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
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
                leading: const Icon(Icons.logout_rounded),
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
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Image.asset("assets/images/sun.png",
                    height: 100, width: 100),
              ),
              const Text("Welcome Alice!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 50),
          Container(
            padding: EdgeInsets.all(20.0),
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: const [
                Colors.greenAccent,
                Color.fromARGB(255, 203, 242, 130)
              ]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  spreadRadius: 5,
                )
              ],
            ),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                    "There is hope, even when your brain tells you there isn’t.",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 4, 4, 4))),
              ),
            ),
          ),
          const SizedBox(height: 70),
          Container(
            decoration: ThemeHelper().buttonBoxDecoration(context),
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ThemeHelper().buttonStyle(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Text(
                  'How do you feel?',
                  style: const TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              onPressed: () {
                showDialog(
                    builder: (ctxt) {
                      return AlertDialog(
                          backgroundColor: Color.fromARGB(255, 246, 234, 129),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Center(
                                child: Text("How do you feel?",
                                    style: TextStyle(fontSize: 30)),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                      child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  width: 300,
                                                  height: 100,
                                                  child: Image.asset(
                                                      "assets/images/neutral_face.png"),
                                                ),
                                                Text("Neutral"),
                                              ],
                                            ),
                                          ))),
                                  Expanded(
                                      child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  width: 300,
                                                  height: 100,
                                                  child: Image.asset(
                                                      "assets/images/sad_face.png",
                                                      height: 150),
                                                ),
                                                Text("Sad"),
                                              ],
                                            ),
                                          )))
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                      child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  width: 300,
                                                  height: 100,
                                                  child: Image.asset(
                                                      "assets/images/happy_face.png",
                                                      height: 150),
                                                ),
                                                Text("Happy"),
                                              ],
                                            ),
                                          ))),
                                  Expanded(
                                      child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  width: 300,
                                                  height: 100,
                                                  child: Image.asset(
                                                      "assets/images/depressed_face.png",
                                                      height: 150),
                                                ),
                                                Text("Depressed"),
                                              ],
                                            ),
                                          )))
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                              ),
                            ],
                          ));
                    },
                    context: context);
              },
            ),
          ),
          SizedBox(height: 30),
          Container(
            decoration: ThemeHelper().buttonBoxDecoration(context),
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ThemeHelper().buttonStyle(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Text(
                  'Did you sleep well?',
                  style: const TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              onPressed: () {
                showDialog(
                    builder: (ctxt) {
                      return AlertDialog(
                          backgroundColor: Color.fromARGB(255, 3, 78, 97),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 15.0),
                              const Text("Did you sleep well?",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              Image.asset("assets/images/sleep.png",
                                  width: 150, height: 150),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 166, 247, 94),
                                        shadowColor: Colors.grey,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(32.0)),
                                        minimumSize: Size(100, 50),
                                      ),
                                      child: Text("Yes",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20))),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 255, 93, 78),
                                        shadowColor: Colors.grey,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(32.0)),
                                        minimumSize: Size(100, 50),
                                      ),
                                      child: Text("No",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20))),
                                ],
                              ),
                            ],
                          ));
                    },
                    context: context);
              },
            ),
          ),
          const SizedBox(height: 30),
          Container(
            decoration: ThemeHelper().buttonBoxDecoration(context),
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ThemeHelper().buttonStyle(),
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Text(
                  'Write your story?',
                  style: const TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              onPressed: () {
                showDialog(
                    builder: (ctxt) {
                      return AlertDialog(
                          backgroundColor: Color.fromARGB(255, 238, 251, 201),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration:
                                    ThemeHelper().buttonBoxDecoration(context),
                                height: 50,
                                width: 350,
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(40, 10, 40, 10),
                                    child: Text(
                                      'New Story',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => StoryPage()));
                                  },
                                ),
                              ),
                              const SizedBox(height: 30),
                              Container(
                                decoration:
                                    ThemeHelper().buttonBoxDecoration(context),
                                height: 50,
                                width: 350,
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(40, 10, 40, 10),
                                    child: Text(
                                      'History',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HistoryPage()));
                                  },
                                ),
                              ),
                            ],
                          ));
                    },
                    context: context);
              },
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => TestUIPage()));
        },
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
