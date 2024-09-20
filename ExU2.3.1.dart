import 'dart:io';

void main(List<String> args) {
  List<int>? numeros = [];

  for (int i = 0; i < 7; i++) {
    print("Give me the ${i + 1} number");
    String? readStr = stdin.readLineSync();
    if (readStr == null || readStr == "") {
      numeros.add(0);
    } else {
      numeros.add(int.parse(readStr!));
    }
  }

  showNumbers(numeros);
}

void showNumbers(List<int>? numeros) {
  print("Numbers typed:");
  numeros!.forEach((num) {
    print(num);
  });
}
