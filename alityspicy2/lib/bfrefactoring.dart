import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const LogIn(),
    );
  }
}

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0.2,
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/glogo.png"),
                Text(
                  "Login with Google",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15.0,
                  ),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Image.asset("assets/images/glogo.png"),
                )
              ],
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50.0),
              primary: Colors.white,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/flogo.png"),
                Text(
                  "Login with Facebook",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Image.asset("assets/images/flogo.png"),
                )
              ],
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50.0),
              primary: Color.fromARGB(189, 20, 46, 134),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                Text(
                  "Login with Email",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50.0),
              primary: Colors.green,
            ),
          ),
        ]),
      ),
    );
  }
}
