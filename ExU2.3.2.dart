import 'dart:io';

void main(List<String> args) {
  Set<String> hobbies = {"Reading", "Cycling", "Hiking"};

  hobbies.add("Running");
  hobbies.add("Swimming");
  hobbies.remove("Hiking");

  print(hobbies.contains("Hiking"));

  for (String hobbie in hobbies) {
    print(hobbie);
  }
}
