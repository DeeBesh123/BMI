import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomHeightContainer = 80.0;
const activeCardColor = Color(0xff1D1E33);
const inactiveCardColor = Color(0xFF111328);
enum Gender{
  male,
  female,
}

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  //cerating method for the malecard color
  void updateColor (Gender selectGender){
    //male gender is male
    if (selectGender == Gender.male){
      //male is in inactive color
      if (maleCardColor == inactiveCardColor){
        //by tapping it should change the active color
        maleCardColor = activeCardColor;
        //after untaping it should move to the femlae i.e inactive color
        femaleCardColor = inactiveCardColor;
      }else{
        maleCardColor = inactiveCardColor;
      }
    }
    //female gender is female
    if (selectGender == Gender.female){
      if (femaleCardColor == inactiveCardColor){
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      }else{
        femaleCardColor = inactiveCardColor;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          // backgroundColor: Colors.lightBlue[100],
          title: const Text(
            'BMI Calculator',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.lightBlue),
          ),
          centerTitle: true,
        ),
        body: Column(children: <Widget>[
          //here we create an column widget
          Expanded(
              //column widget is expanded
              child: Row(
            //inside the expanded widget we have create row with child
            children: <Widget>[
              Expanded(
                // inside the row there is the expanded widget which creates an box
                child: ReusableCode(
                  onPressed: (){
                    setState(() {
                      updateColor(Gender.male);
                    });
                  },
                  colour: maleCardColor,
                  cardChild: iconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCode(
                  onPressed: (){
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  colour: femaleCardColor,
                  cardChild: iconContent(
                    //this is the reusable code
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCode(
              colour: activeCardColor,
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCode(
                  colour: activeCardColor,
                ),
              ),
              Expanded(
                child: ReusableCode(
                  colour: activeCardColor,
                ),
              ),
            ],
          )),
          Container(
            color: bootomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomHeightContainer,
          )
        ]));
  }
}
