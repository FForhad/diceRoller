import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  //var activeDiceImage = 'assets/images/dice2.png';

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      //activeDiceImage = 'assets/images/dice$currentDiceRoll.png';
    });

    //print('working');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: rollDice
          // () {
          //   //any funtions execute when we press this button.
          // }
          ,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
