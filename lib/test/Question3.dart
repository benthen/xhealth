import 'package:flutter/material.dart';
import 'package:project/test/Question2.dart';
import 'package:project/test/Question4.dart';

class Question3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Question3();
  }
}

class _Question3 extends State<Question3> {
  int value = 0;
  
  void _incrementCounter1() {
    value++;
  }

  void _incrementCounter2() {
    value+=2;
  }

  void _incrementCounter3() {
    value+=3;
  }

  void _incrementCounter4() {
    value+=4;
  }
  
  bool isPressed1 = true;
  bool isPressed2 = true;
  bool isPressed3 = true;
  bool isPressed4 = true;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 100),
                Container(
                  padding: EdgeInsets.all(20.0),
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: const [
                      Color.fromARGB(255, 182, 237, 210),
                      Color.fromARGB(255, 130, 242, 221)
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
                      child: Text("3. Trouble falling or staying asleep, or sleeping too much",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 4, 4, 4))),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.arrow_circle_left, size: 50),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Question2()));
                        }),
                    SizedBox(width: 10.0),
                    IconButton(
                        icon: const Icon(Icons.arrow_circle_right, size: 50),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Question4()));
                        }),
                  ],
                ),
                
                SizedBox(height: 50),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 250,
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: ElevatedButton(
                          onPressed: () {
                            if (value == 0 && value != 1)
                              _incrementCounter1();
                            else if (value == 4) {
                              value = 0;
                              _incrementCounter1();
                            } else if (value == 3) {
                              value = 0;
                              _incrementCounter1();
                            } else if (value == 2) {
                              value = 0;
                              _incrementCounter1();
                            }
                            setState(() {
                              if (isPressed1 &&
                                  isPressed2 &&
                                  isPressed3 &&
                                  isPressed4) isPressed1 = !isPressed1;
                              if (!isPressed2 && isPressed1) {
                                isPressed2 = !isPressed2;
                                isPressed1 = !isPressed1;
                              } else if (!isPressed3 && isPressed1) {
                                isPressed3 = !isPressed3;
                                isPressed1 = !isPressed1;
                              } else if (!isPressed4 && isPressed1) {
                                isPressed4 = !isPressed4;
                                isPressed1 = !isPressed1;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: isPressed1
                                ? Color.fromARGB(255, 244, 162, 80)
                                : Color.fromARGB(255, 143, 242, 121),
                            shadowColor: Colors.grey,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ),
                          child: const Text(
                            'Not at all',
                            style: TextStyle(fontSize: 18, letterSpacing: -1.0),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: ElevatedButton(
                          onPressed: () {
                            if (value == 0 && value != 2)
                              _incrementCounter2();
                            else if (value == 1) {
                              value = 0;
                              _incrementCounter2();
                            } else if (value == 3) {
                              value = 0;
                              _incrementCounter2();
                            } else if (value == 4) {
                              value = 0;
                              _incrementCounter2();
                            }
                            setState(() {
                              if (isPressed1 &&
                                  isPressed2 &&
                                  isPressed3 &&
                                  isPressed4) isPressed2 = !isPressed2;
                              if (!isPressed1 && isPressed2) {
                                isPressed1 = !isPressed1;
                                isPressed2 = !isPressed2;
                              } else if (!isPressed3 && isPressed2) {
                                isPressed3 = !isPressed3;
                                isPressed2 = !isPressed2;
                              } else if (!isPressed4 && isPressed2) {
                                isPressed4 = !isPressed4;
                                isPressed2 = !isPressed2;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: isPressed2
                                ? Color.fromARGB(255, 244, 162, 80)
                                : Color.fromARGB(255, 143, 242, 121),
                            shadowColor: Colors.grey,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ),
                          child: const Text(
                            'More than half the day',
                            style: TextStyle(fontSize: 18, letterSpacing: -1.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: ElevatedButton(
                    onPressed: () {
                      if (value == 0 && value != 3)
                        _incrementCounter3();
                      else if (value == 1) {
                        value = 0;
                        _incrementCounter3();
                      } else if (value == 4) {
                        value = 0;
                        _incrementCounter3();
                      } else if (value == 2) {
                        value = 0;
                        _incrementCounter3();
                      }
                      setState(() {
                        if (isPressed1 &&
                            isPressed2 &&
                            isPressed3 &&
                            isPressed4) isPressed3 = !isPressed3;
                        if (!isPressed2 && isPressed3) {
                          isPressed2 = !isPressed2;
                          isPressed3 = !isPressed3;
                        } else if (!isPressed1 && isPressed3) {
                          isPressed1 = !isPressed1;
                          isPressed3 = !isPressed3;
                        } else if (!isPressed4 && isPressed3) {
                          isPressed4 = !isPressed4;
                          isPressed3 = !isPressed3;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: isPressed3
                          ? Color.fromARGB(255, 244, 162, 80)
                          : Color.fromARGB(255, 143, 242, 121),
                      shadowColor: Colors.grey,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                    ),
                    child: const Text(
                      'Several days',
                      style: TextStyle(fontSize: 18, letterSpacing: -1.0),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: ElevatedButton(
                    onPressed: () {
                      if (value == 0 && value != 4)
                        _incrementCounter4();
                      else if (value == 1) {
                        value = 0;
                        _incrementCounter4();
                      } else if (value == 3) {
                        value = 0;
                        _incrementCounter4();
                      } else if (value == 2) {
                        value = 0;
                        _incrementCounter4();
                      }
                      setState(() {
                        if (isPressed1 &&
                            isPressed2 &&
                            isPressed3 &&
                            isPressed4) isPressed4 = !isPressed4;

                        if (!isPressed2 && isPressed4) {
                          isPressed2 = !isPressed2;
                          isPressed4 = !isPressed4;
                        } else if (!isPressed3 && isPressed4) {
                          isPressed3 = !isPressed3;
                          isPressed4 = !isPressed4;
                        } else if (isPressed4 && !isPressed4) {
                          isPressed4 = !isPressed4;
                          isPressed1 = !isPressed1;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: isPressed4
                          ? Color.fromARGB(255, 244, 162, 80)
                          : Color.fromARGB(255, 143, 242, 121),
                      shadowColor: Colors.grey,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                    ),
                    child: const Text(
                      'Nearly every day',
                      style: TextStyle(fontSize: 18, letterSpacing: -1.0),
                    ),
                  ),
                ),
              ],
            )));
  }
}
