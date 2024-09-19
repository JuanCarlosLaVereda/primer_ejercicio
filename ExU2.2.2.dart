import 'dart:io';

void main(List<String> args) {
  print("Give me your name: ");
  String? nombre = stdin.readLineSync();
  print("Give me an hour betwen 0-23");
  String? horaTexto = stdin.readLineSync();
  int? hora;
  if (horaTexto == "") {
    hora = 24;
  } else {
    hora = int.parse(horaTexto!);
  }

  personalisedGreeting(nombre, hora);
}

personalisedGreeting(String? nombre, int hora) {
  if (nombre == "") {
    nombre = "Sir";
  }
  if (hora < 1 || hora > 23) {
    print("Please give me a valid hour 0-23");
    return;
  }
  String momento = "";

  if (hora < 12 && hora > 4) {
    momento = "morning";
  } else if (hora < 18 && hora > 11) {
    momento = "afternoon";
  } else if (hora > 17 && hora < 23) {
    momento = "evening";
  } else {
    momento = "night";
  }

  print("Good $momento, $nombre!");
  return;
}
