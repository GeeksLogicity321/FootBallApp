String EpochToDate(int epochTimestamp) {
  // Convert epoch to DateTime
  DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch(epochTimestamp * 1000);

  // Format DateTime
  String formattedDateTime =
      "${_getMonth(dateTime.month)} ${dateTime.day}, ${_formatTime(dateTime)}";

  return formattedDateTime;
}

String _getMonth(int month) {
  const months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  return months[month - 1];
}

String _formatTime(DateTime dateTime) {
  int hour = dateTime.hour;
  int minute = dateTime.minute;
  String period = hour < 12 ? 'AM' : 'PM';

  if (hour > 12) {
    hour = hour - 12;
  } else if (hour == 0) {
    hour = 12;
  }

  String formattedTime = '$hour:${minute.toString().padLeft(2, '0')} $period';

  return formattedTime;
}
