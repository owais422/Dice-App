import 'package:flutter/material.dart';
import 'package:ud_project_1/dice_roller.dart';
// import 'package:ud_project_1/styled_text.dart';
// import 'package:ud_project_1/styled_text.dart';

class ContainerGradient extends StatelessWidget {
  ContainerGradient(this.color1, this.color2, {super.key});

  ContainerGradient.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color1, color2],
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
