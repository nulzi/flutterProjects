import 'package:flutter/material.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({Key? key}) : super(key: key);

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  final _diceTEC = TextEditingController();
  final _passwordTEC = TextEditingController();
  String dice = "dice";
  String password = "1234";

  @override
  void dispose() {
    _diceTEC.dispose();
    _passwordTEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
        ],
      ),
      // resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image(
                  image: AssetImage("assets/images/wolf.gif"),
                  width: 200.0,
                  height: 210.0,
                ),
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.teal,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        // Text(
                        //   "Enter \"dice\"",
                        //   style: TextStyle(color: Colors.blueAccent),
                        // ),
                        TextField(
                          controller: _diceTEC,
                          decoration: InputDecoration(
                            labelText: "Enter \"dice\"",
                          ),
                          keyboardType: TextInputType.emailAddress,
                          // onChanged: (text) {
                          //   print(text);
                          // },
                        ),
                        // Text(
                        //   "Enter Password",
                        //   style: TextStyle(
                        //     color: Colors.blueAccent,
                        //   ),
                        // ),
                        TextField(
                          controller: _passwordTEC,
                          decoration: InputDecoration(
                            labelText: "Enter Password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          // onChanged: (text) {
                          //   print(text);
                          // },
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_diceTEC.text == dice &&
                                _passwordTEC.text == password) {
                              Navigator.pushNamed(context, "/dice");
                              _diceTEC.clear();
                              _passwordTEC.clear();
                            } else if (_diceTEC.text != dice &&
                                _passwordTEC.text == password) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "Wrong dice spell",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              );
                            } else if (_diceTEC.text == dice &&
                                _passwordTEC.text != password) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "Wrong password",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "Wrong",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                            minimumSize: Size(100.0, 50.0),
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 35.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
