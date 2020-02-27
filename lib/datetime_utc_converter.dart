library datetime_utc_converter;

DateTime dateTimeConvertedToUTC(final DateTime dateTime) => dateTime.isUtc ? dateTime : DateTime.fromMicrosecondsSinceEpoch(dateTime.subtract(dateTime.timeZoneOffset).microsecondsSinceEpoch, isUtc: true);

DateTime dateTimeConvertedToLocal(final DateTime dateTime) => dateTime.isUtc ? DateTime.fromMicrosecondsSinceEpoch(dateTime.add(DateTime.now().timeZoneOffset).microsecondsSinceEpoch, isUtc: false) : dateTime;