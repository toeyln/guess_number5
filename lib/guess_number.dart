// ignore_for_file: avoid_print

import 'dart:io';
import 'game.dart';

var myList = <int>[];
var len = myList.length;

void main() {
  while (true) {
    playGame();
    String? input;

    do {
      stdout.write('Play again? (Y/N): ');
      input = stdin.readLineSync();
    } while (input!.toLowerCase() != 'y' && input.toLowerCase() != 'n');

    if (input.toLowerCase() == 'n') {

      print("You've played $len games");
      for (var i = 0; i < myList.length; i++) {
        print("🚀 Game #${i+1}: ${myList[i]} guesses");
      }
      break;
    }
  }

  // end of program
}

void playGame() {
  stdout.write('Enter a maximum number to random: ');
  dynamic max = stdin.readLineSync();
  dynamic test = int.tryParse(max);
  var game = Game(maxRandom:test);
  var isCorrect = false;

  print("╔══════════════════════════════════════════════════════");
  print("║                ❄ GUESS THE NUMBER ❄                 ");
  print("║──────────────────────────────────────────────────────");

  //{Game.maxRandom}

  do {
    stdout.write('║ Guess the number between 1 and ${game.max}: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }
//game.guessCount
    var result = game.doGuess(guess);

    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print("║──────────────────────────────────────────────────────");
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print("║──────────────────────────────────────────────────────");
    } else if (result == 0) {
      print('║ ➜ $guess is CORRECT 🍸, total guesses: ${game.guessCount}');
      print("║──────────────────────────────────────────────────────");
      myList.add(game.guessCount);
      isCorrect = true;
    }
  } while (!isCorrect);

  print("║                     ✨ THE END ✨                     ");
  print("║                    HAPPY NEW YEAR!                   ");
  print("║            May you have a joyous New Year.           ");
  print("╚══════════════════════════════════════════════════════");
}