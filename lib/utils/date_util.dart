class DateUtil {
  static String dateToString(DateTime date) {
    String response = '';
    final dateNow = DateTime.now();
    Duration timeLast = dateNow.difference(date);
    if (timeLast.inSeconds < 60) {
      response = 'ahora';
    } else if (timeLast.inMinutes < 60) {
      response = timeLast.inMinutes.toString();
    } else if (timeLast.inHours < 24) {
      response = 'Hace ' + timeLast.inHours.toString();
    } else {
      response = date.day.toString() +
          "/" +
          date.month.toString() +
          "/" +
          date.year.toString();
    }
    return response;
  }
}
