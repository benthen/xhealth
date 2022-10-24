import 'package:flutter/material.dart';
import 'package:project/common/theme_helper.dart';
import 'package:project/pages/homepage/homepage.dart';
import 'package:intl/intl.dart';

class StoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StoryState();
  }
}

class _StoryState extends State<StoryPage> {
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    dateController.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 191, 100),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Form(
                    child: Column(
                      children: [
                        Text(
                          'Your Story',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Write anything you want!',
                          style:
                              TextStyle(color: Color.fromARGB(255, 74, 74, 74)),
                        ),
                        Container(
                            padding: const EdgeInsets.all(10),
                            height: 150,
                            child: Center(
                                child: TextField(
                              controller:
                                  dateController, //editing controller of this TextField
                              decoration: const InputDecoration(
                                  icon: Icon(Icons
                                      .calendar_today), //icon of text field
                                  labelText: "Enter Date" //label text of field
                                  ),
                              readOnly: true, // when true user cannot edit text
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate:
                                        DateTime.now(), //get today's date
                                    firstDate: DateTime(
                                        2000), //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(2101));

                                if (pickedDate != null) {
                                  print(
                                      pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                                  String formattedDate =
                                      DateFormat('yyyy-MM-dd').format(
                                          pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                                  print(
                                      formattedDate); //formatted date output using intl package =>  2022-07-04
                                  //You can format date as per your need

                                  setState(() {
                                    dateController.text =
                                        formattedDate; //set foratted date to TextField value.
                                  });
                                } else {
                                  print("Date is not selected");
                                }
                              },
                            ))),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                "Title", "Write your story title"),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          height: 200,
                          width: 400,
                          child: const TextField(
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              labelText: "Enter your story",
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 20, 10),
                              alignLabelWithHint: true,
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            expands: true,
                          ),
                        ),
                        SizedBox(height: 30.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                onPrimary: Colors.white,
                                shadowColor: Colors.grey,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: Size(100, 40), //////// HERE
                              ),
                              child: Text(
                                "Save",
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {
                                showDialog(
                                    builder: (ctxt) {
                                      return AlertDialog(
                                          content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Do you want to save?"),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              ElevatedButton(
                                                style:
                                                    ThemeHelper().buttonStyle(),
                                                child: Text("Yes"),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              HomePage()));
                                                },
                                              ),
                                              ElevatedButton(
                                                style:
                                                    ThemeHelper().buttonStyle(),
                                                child: Text("No"),
                                                onPressed: () {
                                                  Navigator.pop(context);
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
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey,
                                onPrimary: Colors.white,
                                shadowColor: Colors.grey,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: Size(100, 40), //////// HERE
                              ),
                              child: Text(
                                "Back",
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
