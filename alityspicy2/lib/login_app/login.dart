import 'package:alityspicy2/my_button/my_button.dart';
import 'package:flutter/material.dart';

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
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        MyButton(
          image: Image.asset("assets/images/glogo.png"),
          text: Text(
            "Login with Google",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15.0,
            ),
          ),
          color: Colors.white,
          radius: 4.0,
          onPressed: () {},
        ),
        SizedBox(
          height: 10.0,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(50.0),
            primary: Color.fromARGB(189, 20, 46, 134),
          ),
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
        ),
        SizedBox(
          height: 10.0,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(50.0),
            primary: Colors.green,
          ),
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
        ),
      ]),
    );
  }
}
