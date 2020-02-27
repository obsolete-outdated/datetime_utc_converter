import 'package:datetime_utc_converter/datetime_utc_converter.dart';

void main() {
  final DateTime now = DateTime.now();
  print('timeZoneOffset: ${DateTime.now().timeZoneOffset}');
  print("now: ${now.hour}");
  print("at utc: ${dateTimeConvertedToUTC(now).hour}");
  print("to utc and back: ${dateTimeConvertedToLocal(dateTimeConvertedToUTC(now)).hour}");

  print('test: ${now.subtract(now.timeZoneOffset).hour}');
}
