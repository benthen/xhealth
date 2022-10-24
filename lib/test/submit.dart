import 'package:flutter/material.dart';
import 'package:project/test/result.dart';
import 'package:project/test/Question10.dart';
import 'package:project/common/theme_helper.dart';

class Submit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Submit();
  }
}

class _Submit extends State<Submit> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                "Submit",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Result()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Question10()));
              },
            ),
          ),
        ]));
  }
}
