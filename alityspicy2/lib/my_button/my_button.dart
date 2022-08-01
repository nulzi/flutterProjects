import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.image,
      required this.text,
      required this.color,
      required this.radius,
      required this.onPressed})
      : super(key: key);
  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(50.0),
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          image,
          text,
          Opacity(
            opacity: 0.0,
            child: Image.asset("assets/images/glogo.png"),
          )
        ],
      ),
    );
  }
}
