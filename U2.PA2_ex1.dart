import 'dart:io';

void main(List<String> args) {
  //Inicio del programa
  List<String> lista = [];
  bool end = false; //Si es true el programa se termina
  String? opcion; //Variable para guardar las 5 opciones posibles del menú

  //Bucle del menú principal, se romperá cuando la opcion sea == "e"
  while (!end) {
    showmenu();
    opcion = stdin.readLineSync()?.toLowerCase();

    if (opcion == "a") {
      addItem(lista);
    } else if (opcion == "b") {
      removeItem(lista);
    } else if (opcion == "c") {
      checkItem(lista);
    } else if (opcion == "d") {
      displayList(lista);
    } else if (opcion == "e") {
      print("Bye bye!!");
      end = true;
    }
  }
}

void displayList(List<String> lista) {
  //Metodo para mostrar todos los elementos de la lista, si esta vacía no mostrará nada
  for (String item in lista) {
    print(item);
  }
}

void checkItem(List<String> lista) {
  //Metodo para comprobar si un item está en la lista
  String? opcion;
  bool end = false;
  print("Type the item you want to check");

  //El bucle se cumple hasta que el ususario no indique un texto válido
  while (!end) {
    opcion = stdin.readLineSync();
    if (opcion != "") {
      if (lista.contains(opcion)) {
        print("The item $opcion is in the list!");
      } else {
        print("The item $opcion is not in the list!");
      }
      end = true;
    } else {
      print("Something went wrong, try again.");
    }
  }
}

void removeItem(List<String> lista) {
  //Metodo para borrar un item de la lista
  String? opcion;
  bool end = false;
  print("Tyoe the item you want to delete");

  //El bucle se cumple hasta que no se le pase un item de la lista
  while (!end) {
    opcion = stdin.readLineSync();
    if (opcion != "" && lista.contains(opcion)) {
      lista.remove(opcion);
      print("Removed!");
      end = true;
    } else {
      print("Something went wrong, try again.");
    }
  }
}

void addItem(List<String> lista) {
  //Metodo para añadir un item
  bool end = false;
  print("Type the item you want to add");
  String? opcion;

  //Este bucle lo que hace es añadir a la lista por input, si es nulo o "" seguira preguntado por un valor.
  while (!end) {
    opcion = stdin.readLineSync();
    if (opcion != "") {
      lista.add(opcion!);
      end = true;
    } else {
      print("Something went wrong, try again.");
    }
  }
}

void showmenu() {
  //Metodo que muestra el menú por pantalla
  print(
      "--------------------------------------------------------------------U2.PA2_ex1--------------------------------------------------------------------");

  print(
      "          a)Add an item               b)Remove an item            c)Check              d)Display all items                 e)Exit");
}
