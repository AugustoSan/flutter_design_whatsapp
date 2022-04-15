class DateUtil {
  static String dateToString(DateTime date) {
    String response = '';
    final dateNow = DateTime.now();
    Duration timeLast = dateNow.difference(date);
    if (timeLast.inSeconds < 60) {
      response = 'ahora';
    } else if (timeLast.inMinutes < 60) {
      if (timeLast.inMinutes < 2) {
        response = 'Hace ' + timeLast.inMinutes.toString() + ' minuto';
      } else {
        response = 'Hace ' + timeLast.inMinutes.toString() + ' minutos';
      }
    } else if (timeLast.inHours < 24) {
      if (timeLast.inHours < 2) {
        response = 'Hace ' + timeLast.inHours.toString() + ' hora';
      } else {
        response = 'Hace ' + timeLast.inHours.toString() + ' horas';
      }
    } else if (timeLast.inDays < 2) {
      response = 'Ayer';
    } else {
      response = date.day.toString() +
          "/" +
          date.month.toString() +
          "/" +
          date.year.toString();
    }
    return response;
  }

  static DateTime returnToDate(DateTime date, Duration duration) {
    DateTime today = DateTime.now();
    var fiftyDaysFromNow = today.add(duration);
    return fiftyDaysFromNow;
  }
}
