import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              top: 50.0,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.teal.shade900,
                  Colors.teal,
                ],
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.teal.shade100,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.only(
                    bottom: 25.0,
                    top: 65.0,
                  ),
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Priest S.O.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pacifico",
                        ),
                      ),
                      Text(
                        "SOFTWARE DEVELOPER",
                        style: TextStyle(
                          color: Colors.teal.shade100,
                          fontSize: 20.0,
                          fontFamily: "Source Sans Pro",
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 150.0,
                        child: Divider(
                          color: Colors.teal.shade300,
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 10.0,
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.phone,
                            size: 20.0,
                            color: Colors.teal,
                          ),
                          title: Text(
                            "+234 816 060 6990",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Source Sans Pro",
                              color: Colors.teal.shade900,
                            ),
                          ),
                        ),
                      ),
                      Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10.0),
                          child: ListTile(
                            leading: Icon(
                              Icons.email,
                              color: Colors.teal,
                              size: 20.0,
                            ),
                            title: Text(
                              "sabopriest@gmail.com",
                              style: TextStyle(
                                fontFamily: "Source Sans Pro",
                                fontSize: 20.0,
                                color: Colors.teal.shade900,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Positioned(
                  top: -50,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2.0,
                          color: Colors.teal.shade900,
                        ),
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage("assets/images/priest.jpg"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
