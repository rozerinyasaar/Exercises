import 'dart:io';
import 'dart:math';

void main() {
  int maxAttempts = 5;
  int targetNumber = Random().nextInt(10) + 1;

  print('--- Welcome to the Guessing Game ---');
  print('I have picked a number between 1 and 10.');
  print('You have $maxAttempts attempts to find it.\n');

  for (int i = 1; i <= maxAttempts; i++) {
    stdout.write('Attempt $i/$maxAttempts - Enter your guess: ');

    // Read user input and convert to integer
    String? input = stdin.readLineSync();
    int? guess = int.tryParse(input ?? "");

    // Check if input is a valid number
    if (guess == null) {
      print('Invalid input! Please enter a number.');
      continue; // Skip this iteration
    }

    if (guess == targetNumber) {
      print(
        'Congratulations! You found the number $targetNumber in $i attempts! 🎉',
      );
      break; // Stop the loop since they won
    } else {
      if (i < maxAttempts) {
        String hint = guess > targetNumber ? "Lower" : "Higher";
        print(
          'Wrong! Hint: Try a $hint number. Remaining attempts: ${maxAttempts - i}',
        );
      } else {
        print('Game Over! The correct number was: $targetNumber');
      }
    }
  }
}
