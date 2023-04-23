/// Extends the functionality of the `num` class by adding various methods for formatting and working with numbers.
extension NumExtension on num {
  /// Adds a suffix to the number.
  ///
  /// This method takes an optional parameter [suffix],
  /// which is a string that will be appended to the number.
  /// If [suffix] is not provided, it defaults to an ordinal suffix (e.g. 1st, 2nd, 3rd, etc.).
  ///
  /// Example usage:
  /// ```dart
  ///   print(5.suffix()); // prints "5th"
  ///   print(5.suffix('%')); // prints "5%"
  /// ```
  String suffix([String suffix = '']) {
    if (suffix.isNotEmpty) {
      return '$this$suffix';
    }
    switch (this % 100) {
      case 11:
      case 12:
      case 13:
        return '${this}th';
      default:
        switch (this % 10) {
          case 1:
            return '${this}st';
          case 2:
            return '${this}nd';
          case 3:
            return '${this}rd';
          default:
            return '${this}th';
        }
    }
  }

  /// Returns a `Duration` object representing the number of seconds represented by this number.
  ///
  /// Example usage:
  /// ```dart
  ///   var fiveSeconds = 5.seconds;
  ///   print(fiveSeconds); // prints "Duration: 00:00:05.000000"
  /// ```
  Duration get seconds => Duration(seconds: this as int);

  /// Returns a `Duration` object representing the number of milliseconds represented by this number.
  ///
  /// Example usage:
  /// ```dart
  ///   var fiveMilliseconds = 5.milliseconds;
  ///   print(fiveMilliseconds); // prints "Duration: 0:00:00.005000"
  /// ```
  Duration get milliseconds => Duration(milliseconds: this as int);

  /// Returns a `Duration` object representing the number of microseconds represented by this number.
  ///
  /// Example usage:
  /// ```dart
  ///   var fiveMicroseconds = 5.microseconds;
  ///   print(fiveMicroseconds); // prints "Duration: 0:00:00.000005"
  /// ```
  Duration get microseconds => Duration(microseconds: this as int);

  /// Returns a `Duration` object representing the number of minutes represented by this number.
  ///
  /// Example usage:
  /// ```dart
  ///   var fiveMinutes = 5.minutes;
  ///   print(fiveMinutes); // prints "Duration: 0:05:00.000000"
  /// ```
  Duration get minutes => Duration(minutes: this as int);

  /// Returns a `Duration` object representing the number of hours represented by this number.
  ///
  /// Example usage:
  /// ```dart
  ///   var fiveHours = 5.hours;
  ///   print(fiveHours); // prints "Duration: 5:00:00.000000"
  /// ```
  Duration get hours => Duration(hours: this as int);

  /// Returns a `Duration` object representing the number of days represented by this number.
  ///
  /// Example usage:
  /// ```dart
  ///   var fiveDays = 5.days;
  ///   print(fiveDays); // prints "Duration: 120:00:00.000000"
  /// ```
  Duration get days => Duration(days: this as int);
}
