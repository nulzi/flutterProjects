import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  late String dice1;
  late String dice2;
  @override
  void initState() {
    super.initState();
    dice1 = "assets/images/dice1.png";
    dice2 = "assets/images/dice1.png";
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text("Dice Game"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        // flex: 2,
                        child: Image(
                          // image: AssetImage("assets/images/dice1.png"),
                          image: AssetImage(dice1),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        // flex: 1,
                        // child: Image.asset("assets/images/dice5.png"),
                        child: Image.asset(dice2),
                      )
                    ]),
              ),
              SizedBox(
                height: 60.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // print("roll dice");
                  //to do roll dice
                  setState(() {
                    dice1 = getRandomDice();
                    dice2 = getRandomDice();
                  });
                  showToast("dice game");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.amber, minimumSize: Size(100.0, 60.0)),
                child: Icon(
                  Icons.play_arrow,
                  size: 50.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String getRandomDice() {
  int diceNum = Random().nextInt(6) + 1;
  return "assets/images/dice${diceNum.toString()}.png";
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.black,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
