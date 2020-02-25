library datetime_utc_converter;

DateTime dateTimeConvertedToUTC(final DateTime dateTime) => dateTime.isUtc ? dateTime : dateTime.add(dateTime.timeZoneOffset);

DateTime dateTimeConvertedToLocal(final DateTime dateTime) => dateTime.isUtc ? dateTime.subtract(dateTime.timeZoneOffset) : dateTime;