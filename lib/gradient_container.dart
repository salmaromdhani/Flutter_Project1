import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

//import 'package:first_app/style_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.col1, this.col2, {super.key});
   const GradientContainer.purple({super.key})
      : col1 = Colors.deepPurpleAccent,
        col2 = Colors.deepOrangeAccent;

  final MaterialAccentColor col1;
  final MaterialAccentColor col2;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [col1, col2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
