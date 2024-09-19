import 'dart:io';

void main(List<String> args) {
  //Exercise 1&2
  exercise1and2();

  //Exercise 3
  exercise3();

  //Exercise 4
  exercise4();
}

exercise1and2() {
  print("Exercise 1 & 2 --------------------------------------");
  int? num1;
  int? num2;
  print("Num1: ");
  num1 = int.parse(stdin.readLineSync()!);
  print("Num2: ");
  num2 = int.parse(stdin.readLineSync()!);

  var res;
  if (num1 <= num2) {
    res = num1 * num2;
  } else {
    res = num2 / num1;
  }
  print(res);
  res = num1 <= num2 ? num1 * num2 : num2 / num1;
  print(res);
}

exercise4() {
  print("Exercise 4 ----------------------------------------------------");
  String? texto;
  bool fin = false;
  print("Give me some text:");
  texto = stdin.readLineSync()?.toUpperCase();
  if (texto == null || texto.isEmpty) {
    print("the string is empty.");
    fin = true;
  }
  int i = texto!.length - 1;
  do {
    print(texto[i]);
    i--;
  } while (!fin && i >= 0);
}

exercise3() {
  print("Exercise 3 ----------------------------------------------------");
  print("Num3: ");
  int? num3 = int.parse(stdin.readLineSync()!);
  print("Num4: ");
  int? num4 = int.parse(stdin.readLineSync()!);
  int res2 = 0;

  res2 ??= num3 + num4;
  print("The result of the sum is $res2");
}
