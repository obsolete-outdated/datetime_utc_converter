import 'package:datetime_utc_converter/datetime_utc_converter.dart';

void main() {
  final DateTime now = DateTime.now();
  print("now: ${now.millisecondsSinceEpoch}");
  print("at utc: ${dateTimeConvertedToUTC(now).millisecondsSinceEpoch}");
  print("to utc and back: ${dateTimeConvertedToLocal(dateTimeConvertedToUTC(now)).millisecondsSinceEpoch}");
}
