import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Column widget",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        // child: Center(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.white,
              child: Text("container 1"),
            ),
            SizedBox(
              width: 30.0,
              height: 30.0,
            ),
            Container(
              height: 100,
              color: Colors.blue,
              child: Text("container 2"),
            ),
            Container(
              height: 100,
              color: Colors.red,
              child: Text("container 3"),
            ),
            // Container(
            //   width: double.infinity,
            //   height: 20,
            // )
          ],
        ),
        // ),
      ),
    );
  }
}
