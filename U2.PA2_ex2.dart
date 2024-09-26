import 'dart:io';

void main(List<String> args) {
  //Inicio del programa
  Map<String, int> mapa = {};
  bool end = false; //Si es true el programa se termina
  String? opcion; //Variable para guardar las 6 opciones posibles del menú

  //Bucle del menú principal, se romperá cuando la opcion sea == "f"
  while (!end) {
    showmenu();
    opcion = stdin.readLineSync()?.toLowerCase();

    if (opcion == "a") {
      addContact(mapa);
    } else if (opcion == "b") {
      retrievePhone(mapa);
    } else if (opcion == "c") {
      deleteContact(mapa);
    } else if (opcion == "d") {
      updateContact(mapa);
    } else if (opcion == "e") {
      displayContacts(mapa);
    } else if (opcion == "f") {
      print("Bye bye!!");
      end = true;
    }
  }
}

void updateContact(Map<String, int> mapa) {
  //Metodo para actualizar un contacto
  bool end = false;
  String? opcion;

  //Hasta que no de un contacto valido no se rompe el bucle
  while (!end) {
    print("Type the contact you want to update");
    opcion = stdin.readLineSync();

    if (opcion != "") {
      if (mapa.containsKey(opcion)) {
        //Si el contacto existe
        String name = opcion!;
        print("Type the new number");
        opcion = stdin.readLineSync(); //Pido el nuevo numero
        if (opcion != "") {
          //Si el valor es valido
          mapa[name] = int.parse(opcion!); //Actualizo el contacto
          print("Changed!");
          end = true;
        } else {
          print("Something went wrong, try again.");
        }
      } else {
        print("That contact does not exists!");
      }
    } else {
      print("Something went wrong, try again.");
    }
  }
}

void deleteContact(Map<String, int> mapa) {
  //Metodo para borrar un contacto
  bool end = false;
  String? opcion;

  while (!end) {
    print("Type the name of the contact you want to delete");
    opcion = stdin.readLineSync();
    if (opcion != "") {
      if (mapa.containsKey(opcion)) {
        mapa.remove(opcion);
        end = true;
        print("Contact $opcion deleted!");
      } else {
        print("$opcion does not exists");
      }
    } else {
      print("Something went wrong, try again.");
    }
  }
}

void retrievePhone(Map<String, int> mapa) {
  //Metodo para recuperar el telofono por contacto
  bool end = false;
  String? opcion;

  while (!end) {
    print("Type the name of the contact");
    opcion = stdin.readLineSync();

    if (opcion != "") {
      if (mapa.containsKey(opcion)) {
        print("The number of $opcion is ${mapa[opcion]}");
        end = true;
      } else {
        end = true;
        print("That contact does not exists!");
      }
    } else {
      print("Something went wrong, try again.");
    }
  }
}

void addContact(Map<String, int> mapa) {
  //Metodo para añadir un contacto
  bool end = false;
  String? opcion;

  while (!end) {
    print("Type the name of the new contact");
    opcion = stdin.readLineSync();
    if (opcion != "") {
      String name = opcion!;
      print("Type the number of $name");
      opcion = stdin.readLineSync();
      if (opcion != "") {
        mapa[name] = int.parse(opcion!);
        end = true;
      } else {
        print("Something went wrong, try again");
      }
    } else {
      print("Something went wrong, try again.");
    }
  }
}

void displayContacts(Map<String, int> mapa) {
  for (String name in mapa.keys) {
    print("$name : ${mapa[name]}");
  }
}

void showmenu() {
  //Metodo que muestra el menú por pantalla
  print(
      "-------------------------------------------------------------------------------------------U2.PA2_ex2-------------------------------------------------------------------------------------------");

  print(
      "          a)Add a contact               b)Retrive a phone by contact           c)Delete a contact              d)Update a phone number                e)Display contacts              f)Exit");
}
