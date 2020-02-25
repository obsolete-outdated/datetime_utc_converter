import 'package:datetime_utc_converter/datetime_utc_converter.dart';

void main(){
  final DateTime now = DateTime.now();
  final DateTime nowAtUTC = dateTimeConvertedToUTC(now);
}