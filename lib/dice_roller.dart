import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ud_project_1/styled_text.dart';

final randominzer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var imageDice = Image.asset(
    'assets/dice-images/dice-3.png',
    width: 200,
  );
  void rollDice() {
    setState(() {
      var diceNumber = randominzer.nextInt(6) + 1;
      imageDice = Image.asset(
        'assets/dice-images/dice-${diceNumber}.png',
        width: 200,
      );
      print(diceNumber);
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        imageDice,
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.green.shade600),
          onPressed: rollDice,
          child: const StyledText("Roll Dice"),
        )
      ],
    );
  }
}
