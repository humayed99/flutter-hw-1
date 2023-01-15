
import 'dart:io';

void main() {

  String operation = promptMenu();

  switch (operation) {
    case '1':
      promptAddition();
      break;
    case '2':
      promptSubtraction();
      break;
    case '3':
      promptMultiplication();
      break;
    case '4':
      promptDivision();
      break;
    case 'q':
      exit(0);
    
    default:
      exit(0);
   
  }
}

String promptMenu() {
  print('''

      +++++++++++++++++++++++++++++++++++++++++

        Please enter the number of operation:
        1- Addition.
        2- Subtraction.
        3- Multiplication.
        4- Division.

      (q to quit)
      +++++++++++++++++++++++++++++++++++++++++++

        ''');
  String? opNumber = stdin.readLineSync();

  if (['1', '2', '3', '4', 'q'].contains(opNumber)) {
    return opNumber!;
  } else {
    print('Please enter a correct value!');
    return promptMenu();
  }
}

void promptAddition() {
  print('Enter the first value');
  double first = doubleParser();

  print('Enter the second value');
  double second = doubleParser();





  var answer = first + second;

  print('The answer for $first + $second = $answer');

  main();
}
void promptSubtraction() {
  print('Enter the first value');
  double first = doubleParser();

  print('Enter the second value');
  double second = doubleParser();

  var answer = first - second;

  print('The answer for $first - $second = $answer');

  main();
}
void promptMultiplication() {
  print('Enter the first value');
  double first = doubleParser();

  print('Enter the second value');
  double second = doubleParser();

  var answer = first * second;

  print('The answer for $first * $second = $answer');

  main();
}
void promptDivision() {
  print('Enter the first value');
  double first = doubleParser();

  print('Enter the second value');
  double second = doubleParser();

  var answer = first / second;

  print('the answer for $first / $second = $answer');

  main();
}

double doubleParser() {
  String? input = stdin.readLineSync();
  double? parsedDouble = double.tryParse(input!);

  if(parsedDouble != null) {
    return parsedDouble;
  } else {
    print("\nPlease enter a valid number value");
    return doubleParser();
  }
}