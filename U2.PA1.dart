import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  //Exercise 1&2
  exercise1and2();

  //Exercise 3
  exercise3();

  //Exercise 4
  exercise4();

  //Exercise 5
  exercise5();
}

exercise5() {
  String? texto1 = "hola";
  String? texto_to_double = "5.25";
  double? num1 = double.tryParse(texto1) == null ? 0 : 0;
  print("Exercise 5 --------------------------------------");
  print("Suma ----> ${num1 + double.parse(texto_to_double)}");
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
    res = num1 / num2;
  }
  print(res);
  res = num1 <= num2 ? num1 * num2 : num1 / num2;
  print(res);
}

exercise4() {
  print("Exercise 4 ----------------------------------------------------");
  String? texto;
  bool fin = false;
  print("Give me some text:");
  texto = stdin.readLineSync();
  if (texto == null || texto.isEmpty) {
    print("the string is empty.");
    fin = true;
    return;
  }
  int i = texto.length - 1;
  do {
    print(texto[i]);
    i--;
  } while (!fin && i >= 0);
  return;
}

exercise3() {
  print("Exercise 3 ----------------------------------------------------");
  print("Num3: ");
  String? num3_texto = stdin.readLineSync();
  int? num3;
  if (num3_texto != "") {
    num3 = int.parse(num3_texto!);
  }
  print("Num4: ");
  String? num4_texto = stdin.readLineSync();
  int? num4;
  if (num4_texto != "") {
    num4 = int.parse(num4_texto!);
  }
  int res2 = 0;
  res2 = (num3 ?? 0) + (num4 ?? 0);
  print("The result of the sum is $res2");
}
