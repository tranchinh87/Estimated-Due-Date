import 'package:intl/intl.dart';

void main() {
   var formatter = DateFormat('yyyy-MM-dd'); 
  // Given date in the "YYYY-MM-DD" format
  String givenDateStr = "2023-12-25";

  // Convert the string to a DateTime object
  DateTime givenDate = DateTime.parse(givenDateStr);

  // Calculate the date 280 days before the given date
  DateTime fromDate = givenDate.subtract(Duration(days: 280));
   
  
  String toDay = formatter.format(DateTime.now());
  String fromDay = formatter.format(fromDate);
 
   
  
  DateTime dateFrom = DateTime.parse(fromDay);
  DateTime dateTo = DateTime.parse(toDay);
  final countDay= dateTo.difference(dateFrom).inDays;
  
  int numberWeeks = (countDay / 7).floor();
  int numberDays = countDay - ((countDay / 7).floor() * 7);
   

  print("Estimated Due Date: $givenDateStr");  
  print("Date (280 days before): $fromDay");
  print("Today: $toDay");
  print("The number of days that have passed: $countDay Days");
  print("-------------------------------------------------------------------");
  print("The number of weeks and days that have passed: $numberWeeks Weeks and $numberDays Days");
  print("-------------------------------------------------------------------");
  
  DateTime dateTimeFrom = DateTime.parse("2023-12-21"); 
  final difference = dateTo.difference(dateTimeFrom).inDays;
  print("Number Days: $difference days");
}
 
