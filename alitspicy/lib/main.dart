import 'package:flutter/material.dart';

import 'package:alitspicy/loginhome.dart';
import 'package:alitspicy/dicegame.dart';

void main() => runApp(const LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Demo",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginHome(),
        "/dice": (context) => const DiceGame(),
      },
      // home: const LoginHome(),
    );
  }
}
