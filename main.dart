import "dart:io";

void main() {
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    sum += i;
  }
  print("The sum of the first 10 natural numbers is: $sum");

  print("Task 2:Display n terms of natural numbers and their sum");
  int input = int.parse(stdin.readLineSync()!);
  print("The first $input natural numbers are:");

  int sum2 = 0;
  for (int i = 1; i <= input; i++) {
    print(i);
    sum2 += i;
  }
  print("sum of Natural Numbers up to $input terms: $sum2");

  print(
      "Task 3: Count of positive, negative, and zero numbers entered by the user");

  print('How many numbers do you want to check?');
  int n = int.parse(stdin.readLineSync()!);

  int positiveCount = 0;
  int negativeCount = 0;
  int zeroCount = 0;

  print('Enter $n numbers:');
  for (int i = 0; i < n; i++) {
    int num = int.parse(stdin.readLineSync()!);
    if (num > 0) {
      positiveCount++;
    } else if (num < 0) {
      negativeCount++;
    } else {
      zeroCount++;
    }
  }

  print(
      'You entered $positiveCount positive numbers, $negativeCount negative numbers, and $zeroCount zeros.');

  print("Task 4: Factorial of a number");

  print('Enter a number to find its factorial: ');
  int num = int.parse(stdin.readLineSync()!);

  int factorial = 1; // i cannot put it wit h0 because it will print zero (any number multiplie by zero = 0).
  for (int i = 1; i <= num; i++) {
    factorial *= i;
  }

  print("Factorial of $num is $factorial");

  print("Task 5: Numbers divisable by 5 and 6 between 100 and 1000");

  for (int i = 100; i <= 1000; i++) {
    if (i % 5 == 0 && i % 6 == 0) {
      print(i);
    }
  }
  
  print("Task 6: Check if the number is Prime.");
  
  print('Enter a number to check if it\'s prime:');
  int prime = int.parse(stdin.readLineSync()!);

  bool isPrime = true;
  
  // Check divisibility from 2 to number -1
  for (int i = 2; i < prime; i++) {
    if (prime % i == 0) {
      isPrime = false;
      break; // Exit the loop as we found a divisor
    }
  }

  if (isPrime && prime > 1) {
    print('Yes'); // It's a prime number
  } else {
    print('No');  // It's not a prime number
  }
}
