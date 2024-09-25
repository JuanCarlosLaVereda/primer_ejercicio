import 'dart:io';

void main(List<String> args) {
  Map<String, String> favouriteColors = {
    "Pepe": "rojo",
    "Pepa": "rojo",
    "Antonio": "verde",
    "JC": "negro",
    "Antonia": "amarillo"
  };

  favouriteColors["Marcos"] = "azul";
  favouriteColors["Anonio"] = "blanco";
  favouriteColors.remove("Antonia");

  print("JC's fovourite color is ${favouriteColors["JC"]}");
}
