import 'dart:io';

void main(List<String> args) {
  //Inicio del programa
  Map<String, List<String>> mapa = {
    "lista1": [],
    "lista2": [],
    "lista3": [],
    "lista4": []
  };
  bool end = false; //Si es true el programa se termina
  String? opcion; //Variable para guardar las 5 opciones posibles del menú

  //Bucle del menú principal, se romperá cuando la opcion sea == "e"
  while (!end) {
    showmenu();
    opcion = stdin.readLineSync()?.toLowerCase();

    if (opcion == "a") {
      addSong(mapa);
    } else if (opcion == "b") {
      removeSong(mapa);
    } else if (opcion == "c") {
      displayPlayList(mapa);
    } else if (opcion == "d") {
      playNextSong(mapa);
    } else if (opcion == "e") {
      print("Bye bye!");
      end = true;
    }
  }
}

void playNextSong(Map<String, List<String>> mapa) {
  //Reproduce la siguiente cancion de una playlist y tambien la borra
  bool end = false;
  String? opcion;

  while (!end) {
    opcion = playList(mapa);
    if (opcion != "") {
      if (mapa[opcion] != null) {
        mapa[opcion]!.removeAt(0);
        print("Now playing.... ${mapa[opcion]!.first}");
        end = true;
      }
    } else {
      print("Somethign went wrong, try again.");
    }
  }
}

void displayPlayList(Map<String, List<String>> mapa) {
  //Metodo para mostrar una playlist
  bool end = false;
  String? opcion;

  while (!end) {
    opcion = playList(mapa);
    if (opcion != "") {
      for (String name in mapa.keys) {
        print("${mapa[name]}: ");
        List<String> lista = mapa[name]!;
        for (String song in lista) {
          print("---$song");
        }
      }
      end = true;
    } else {
      print("Something went wrong, try again.");
    }
  }
}

void removeSong(Map<String, List<String>> mapa) {
  //Metodo para borrar una cancion de la playlist
  bool end = false;
  String? opcion;

  while (!end) {
    opcion = playList(mapa);
    if (opcion != "") {
      print("Type the name of the song");
      String name = opcion;
      opcion = stdin.readLineSync();
      if (opcion != "" && mapa[name]!.contains(opcion)) {
        mapa[name]?.remove(opcion!);
        print("Removed!");
        end = true;
      } else {
        print("Something went wrong, try again.");
      }
    } else {
      print("Something went wrong, try again.");
    }
  }
}

void addSong(Map<String, List<String>> mapa) {
  //Metodo para añadir una cancion por playlist
  bool end = false;
  String? opcion;

  while (!end) {
    opcion = playList(mapa);
    if (opcion != "") {
      print("Type the name of the song");
      String name = opcion;
      opcion = stdin.readLineSync();
      if (opcion != "") {
        mapa[name]?.add(opcion!);
        print("Added!");
        end = true;
      } else {
        print("Something went wrong, try again.");
      }
    } else {
      print("Something went wrong, try again.");
    }
  }
}

String playList(Map<String, List<String>> mapa) {
  String? opcion;
  print("Type the name of the playlist");
  opcion = stdin.readLineSync();
  if (mapa.containsKey(opcion)) {
    return opcion!;
  }
  return "";
}

void showmenu() {
  //Metodo que muestra el menú por pantalla
  print(
      "------------------------------------------------------------------------U2.PA2_ex3------------------------------------------------------------------------");

  print(
      "          a)Add a song               b)Remove song           c)Display a playlist              d)Play next song                e)Exit");
}
