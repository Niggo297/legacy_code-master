import 'package:intl/intl.dart';

// ignore: public_member_api_docs
class DateFormatter {
  // ignore: public_member_api_docs
  static String ddMMyyyy(DateTime date) =>
      DateFormat('dd.MM.yyyy').format(date);

  /// Formats a [Duration] object into a string with the pattern `HH:mm`.
  ///
  /// This method adds the given [Duration] to a base `DateTime` (00:00), then formats the result into `HH:mm`.
  ///
  /// Example:
  /// ```
  /// Duration duration = Duration(hours: 14, minutes: 30);
  /// String formattedTime = DurationFormatter.hhmm(duration);
  /// print(formattedTime); // Output: 14:30
  /// ```
  static String hhmm(DateTime date) => DateFormat('hh:mm').format(date);
}
