import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
);

class iconContent extends StatelessWidget {
  //here is the class contain for the
  //icon and text
  iconContent({this.icon, this.label = ""});

  final IconData? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon, //initilizing the icon attributes in the icon
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label, //inilitazing the text in the text
          style: labelTextStyle,
        )
      ],
    );
  }
}
