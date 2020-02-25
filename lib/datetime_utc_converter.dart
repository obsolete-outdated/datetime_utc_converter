library datetime_utc_converter;

DateTime dateTimeConvertedToUTC(final DateTime dateTime) => dateTime.isUtc ? dateTime : DateTime.fromMicrosecondsSinceEpoch(dateTime.add(dateTime.timeZoneOffset).microsecondsSinceEpoch, isUtc: true);

DateTime dateTimeConvertedToLocal(final DateTime dateTime) => dateTime.isUtc ? DateTime.fromMicrosecondsSinceEpoch(dateTime.subtract(dateTime.timeZoneOffset).microsecondsSinceEpoch, isUtc: false) : dateTime;