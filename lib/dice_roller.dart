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
var currentDiceRoll = randomizer.nextInt(6) + 1;
var currentDiceRoll2 = randomizer.nextInt(6) + 1;
var currentDiceRoll3 = randomizer.nextInt(6) + 1;
var currentDiceRoll4 = randomizer.nextInt(6) + 1;
var currentDiceRoll5 = randomizer.nextInt(6) + 1;


var locked1 = false;
var locked2 = false;
var locked3 = false;
var locked4 = false;
var locked5 = false;

void rollDice() {
  setState(() {
    if (!locked1) {currentDiceRoll = randomizer.nextInt(6) + 1;}
    if (!locked2) {currentDiceRoll2 = randomizer.nextInt(6) + 1;}
    if (!locked3) {currentDiceRoll3 = randomizer.nextInt(6) + 1;}
    if (!locked4) {currentDiceRoll4 = randomizer.nextInt(6) + 1;}
    if (!locked5) {currentDiceRoll5 = randomizer.nextInt(6) + 1;}
  });
}

void lockDie(int num) {
  setState(() {
    if (num == 1) {
      locked1 = !locked1;
    }
    if (num == 2) {
      locked2 = !locked2;
    }
    if (num == 3) {
      locked3 = !locked3;
    }
    if (num == 4) {
      locked4 = !locked4;
    }
    if (num == 5) {
      locked5 = !locked5;
    }
  });
}

  @override
  Widget build(context) {
   return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 25,
            ),

            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 100,
            ),
            TextButton(
              onPressed: () => lockDie(1),
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: !locked1 ? Colors.white : Colors.blue,
                textStyle: const TextStyle(
                  fontSize: 10,
                ),
              ),
              child: const Text('Lock Die!'),
            ),
            // const SizedBox(
            //   height: 10,
            // ),

            Image.asset(
              'assets/images/dice-$currentDiceRoll2.png',
              width: 100,
            ),
            TextButton(
              onPressed: () => lockDie(2),
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: !locked2 ? Colors.white : Colors.blue,
                textStyle: const TextStyle(
                  fontSize: 10,
                ),
              ),
              child: const Text('Lock Die!'),
            ),
            // const SizedBox(
            //   height: 10,
            // ),

            Image.asset(
              'assets/images/dice-$currentDiceRoll3.png',
              width: 100,
            ),
            TextButton(
              onPressed: () => lockDie(3),
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: !locked3 ? Colors.white : Colors.blue,
                textStyle: const TextStyle(
                  fontSize: 10,
                ),
              ),
              child: const Text('Lock Die!'),
            ),
            // const SizedBox(
            //   height: 10,
            // ),

            Image.asset(
              'assets/images/dice-$currentDiceRoll4.png',
              width: 100,
            ),
            TextButton(
              onPressed: () => lockDie(4),
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: !locked4 ? Colors.white : Colors.blue,
                textStyle: const TextStyle(
                  fontSize: 10,
                ),
              ),
              child: const Text('Lock Die!'),
            ),
            // const SizedBox(
            //   height: 10,
            // ),

            Image.asset(
              'assets/images/dice-$currentDiceRoll5.png',
              width: 100,
            ),
            TextButton(
              onPressed: () => lockDie(5),
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: !locked5 ? Colors.white : Colors.blue,
                textStyle: const TextStyle(
                  fontSize: 10,
                ),
              ),
              child: const Text('Lock Die!'),
            ),
            // const SizedBox(
            //   height: 10,
            // ),

            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice!'),
            ),
          ],
        );
  }
}