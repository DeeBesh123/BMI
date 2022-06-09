import 'package:flutter/material.dart';

const bootomContainerColor = Color(0xFFEB1555);

class ReusableCode extends StatelessWidget {
  ReusableCode({this.colour = bootomContainerColor, this.cardChild,this.onPressed});

  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
