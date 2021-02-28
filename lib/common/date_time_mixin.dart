mixin DateTimeMixin {
  String getDate(DateTime dateTime) {
    return dateTime.toString().split(' ')[0];
  }

  String getTime(DateTime dateTime) {
    return dateTime.toString().split(' ')[1];
  }
}
