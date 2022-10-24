import 'package:flutter/material.dart';
import 'package:project/common/theme_helper.dart';
import 'package:project/pages/homepage/homepage.dart';
import 'package:project/test/Question1.dart';

class TestUIPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestUIPageState();
  }
}

class _TestUIPageState extends State<TestUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 221, 154, 233),

      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [
              Color.fromARGB(255, 133, 244, 229),
              Color.fromARGB(255, 244, 153, 248),
            ],
            stops: [0, 1],
          )),
          child: Container(
            margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            alignment: Alignment.center,
            child: Column(
              children: [
                Form(
                  child: Column(
                    children: [
                      Text(
                        'Hello, I am SunX',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30.0),
                      Image.asset("assets/images/sun.png", height: 245),
                      SizedBox(height: 40.0),
                      Text(
                        'Take a test',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 40.0),
                      Container(
                        width: 200,
                        decoration: ThemeHelper().buttonBoxDecoration(context),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 222, 222, 222),
                            onPrimary: Colors.white,
                            shadowColor: Colors.grey,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: Size(100, 50), //////// HERE
                          ),
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Question1()));
                          },
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: 200,
                        decoration: ThemeHelper().buttonBoxDecoration(context),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 222, 222, 222),
                            onPrimary: Colors.white,
                            shadowColor: Colors.grey,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: Size(100, 50), //////// HERE
                          ),
                          child: Text(
                            "Back",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
