import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Buttons"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  print("text button");
                },
                onLongPress: () {
                  print("text btn");
                },
                child: Text(
                  "Text Button",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  // backgroundColor: Colors.blue,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("elevated button");
                },
                child: Text("elevated button"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0.0,
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  print("outlined button");
                },
                child: Text("outlined button"),
                style: OutlinedButton.styleFrom(
                  primary: Colors.green,
                  side: BorderSide(
                    color: Colors.black87,
                    width: 2.0,
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  print("Icon button");
                },
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                  // color: Colors.black87,
                ),
                label: Text("Go to home"),
                style: TextButton.styleFrom(
                  primary: Colors.purple,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  print("Icon button");
                },
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                  // color: Colors.black87,
                ),
                label: Text("Go to home"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black, minimumSize: Size(200, 50)),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  print("Icon button");
                },
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                  // color: Colors.black87,
                ),
                label: Text("Go to home"),
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
              ElevatedButton.icon(
                onPressed: null,
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                  // color: Colors.black87,
                ),
                label: Text("Go to home"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onSurface: Colors.pink,
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                buttonPadding: EdgeInsets.all(10),
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Textbutton"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("elevatedbutton"),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
