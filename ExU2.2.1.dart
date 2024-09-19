import 'dart:io';

enum DaysOfWeek {
  monday,
  tuesday,
  wednsday,
  thursday,
  friday,
  saturday,
  sunday
}

weekdayOrWeekend(DaysOfWeek day) {
  if (day == DaysOfWeek.saturday || day == DaysOfWeek.sunday) {
    return "It's a weekend";
  } else {
    return "It's a weekday";
  }
}

daysUntilWeekend(DaysOfWeek day) {
  if (day == DaysOfWeek.saturday || day == DaysOfWeek.sunday) {
    return "0" + "days until the weekend!!";
  }
  return (5 - day.index).toString() + " days until the weekend!!";
}

void main(List<String> args) {
  print(DaysOfWeek.values);

  print("Give me a day:");
  String? info = stdin.readLineSync()?.toLowerCase();

  DaysOfWeek day = DaysOfWeek.values
      .firstWhere((e) => e.toString().substring(11) == info, orElse: () {
    throw StdoutException("Enter a valid day");
  });

  print(weekdayOrWeekend(day) + " " + daysUntilWeekend(day));
}
