import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BBANTO",
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: const Text("BBANTO"),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/giphy.gif"),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text("Name",
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("BBANTO",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text("BBANTO POWER LEVEL",
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("14",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("using lightsaber",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),),
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("face hero tattoo",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),),
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("fire flames",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/pngegg.png"),
                radius: 40.0,
                backgroundColor: Colors.amber[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}