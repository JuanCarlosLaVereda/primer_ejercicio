void main(List<String> args) {
  //Hello world exaample

  if (args.length > 0) {
    for (int i = 0; i < args.length; i++) {
      print(args[i]);
    }
  } else {
    print("Sin valores");
  }
}
