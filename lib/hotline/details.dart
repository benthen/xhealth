import 'package:flutter/material.dart';
import 'package:project/hotline/hotline.dart';
import 'package:project/common/theme_helper.dart';

class FisrtDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstState();
  }
}

class _FirstState extends State<FisrtDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 255, 179),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 50.0),
                  child: Stack(
                    children: [
                      SizedBox(height: 50.0),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: const [
                            Colors.yellowAccent,
                            Colors.orangeAccent,
                          ]),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15,
                              spreadRadius: 10,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text("BEFRIENDERS",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 4, 4, 4))),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Container(
                                  child: Text("Contact Number: ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  child: Text("03-7956 8145",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Container(
                                  child: Text("E-Mail: ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  child: Text("sam@befrienders.org.my",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Container(
                                  child: Text("Website: ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  child: Text("https://www.befrienders.org.my/",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "Befrienders is a not-for-profit organisation providing emotional support 24 hours a day, 7 days a week, to people who are lonely, in distress, in despair, and having suicidal thoughts - without charge.",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(height: 20.0),
              Container(
                decoration: ThemeHelper().buttonBoxDecoration(context),
                child: ElevatedButton(
                  style: ThemeHelper().buttonStyle(),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HotlinePage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondState();
  }
}

class _SecondState extends State<SecondDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 255, 179),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 50.0),
                  child: Stack(
                    children: [
                      SizedBox(height: 50.0),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: const [
                            Colors.yellowAccent,
                            Colors.orangeAccent,
                          ]),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15,
                              spreadRadius: 10,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text("THRIVE WELL",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 4, 4, 4))),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Container(
                                  child: Text("Contact Number: ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  child: Text("6018-900-7247",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Container(
                                  child: Text("E-Mail: ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  child: Text(
                                      "center@thethrive.center / info@thethrive.center",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Container(
                                  child: Text("Website: ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  child: Text("https://www.thethrive.center/",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "Thrive Well is a Social Enterprise with a mission to expand trauma-informed community mental health services to individuals, communities and organisations, with a focus on building community resilience in high-needs communities, in a sustainable manner. Clients with a monthly household income below a certain threshold will qualify for financial aid based on availability of program funding.",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(height: 20.0),
              Container(
                decoration: ThemeHelper().buttonBoxDecoration(context),
                child: ElevatedButton(
                  style: ThemeHelper().buttonStyle(),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HotlinePage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ThirdState();
  }
}

class _ThirdState extends State<ThirdDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 255, 179),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 50.0),
                  child: Stack(
                    children: [
                      SizedBox(height: 50.0),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: const [
                            Colors.yellowAccent,
                            Colors.orangeAccent,
                          ]),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15,
                              spreadRadius: 10,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                  "MALAYSIAN MENTAL HEALTH ASSOCIATION (MMHA)",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 4, 4, 4))),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Container(
                                  child: Text("Contact Number: ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  child: Text("03-2780 6803",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Container(
                                  child: Text("E-Mail: ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  child: Text("admin@mmha.org.my",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Container(
                                  child: Text("Website: ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  child: Text("https://mmha.org.my/",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "Malaysian Mental Health Association provides support via their phone line on any mental health issues. MMHA also has qualified mental health professionals ie. clinical psychologist, and counselors providing psychological support services. Financial subsidies are readily available to ensure that necessary therapy and support is given to anyone who needs it.",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(height: 20.0),
              Container(
                decoration: ThemeHelper().buttonBoxDecoration(context),
                child: ElevatedButton(
                  style: ThemeHelper().buttonStyle(),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HotlinePage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
