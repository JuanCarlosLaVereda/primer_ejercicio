import 'dart:io';

void main(List<String> args) {
  int? number1 = null;
  int number2;

  try {
    number2 = number1!;
  } catch (e) {
    print(e);
  }

  if (number1 != null) {
    print(number1);
  } else {
    print("The number is not assigned.");
  }

  number1 ??= 10;

  print(number1);

  String? greeting;

  String? info;
  print("Give me a number");
  info = stdin.readLineSync();

  if (info == "") {
    print("No input provided.");
  } else {
    print(info);
  }
}
