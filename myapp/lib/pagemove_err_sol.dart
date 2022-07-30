import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return MaterialApp(
        home:
            //solution2
            Builder(
                builder: (context2) => Center(
                      child: RaisedButton(
                          child: Text("Go to ScreenA"),
                          onPressed: () => Navigator.push(
                              context2,
                              MaterialPageRoute(
                                  builder: (context) => ScreenA()))),
                    ))
        // solution1
        // MyPage(),
        //error code
        //     Center(
        //   child: RaisedButton(
        //       child: Text("Go to ScreenA"),
        //       onPressed: (() => Navigator.push(
        //           context2, MaterialPageRoute(builder: (context) => ScreenA())))),
        // )
        );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
      child: Text("Go to ScreenA"),
      onPressed: (() => Navigator.push(
          context, MaterialPageRoute(builder: (context) => ScreenA()))),
    ));
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hi, there")),
    );
  }
}
