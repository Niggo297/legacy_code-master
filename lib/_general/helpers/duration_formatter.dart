import 'package:intl/intl.dart';

/// A utility class for formatting [Duration] objects into readable time strings.
class DurationFormatter {
  /// Formats a [DateTime] object into a string with the pattern `HH:mm`.
  ///
  /// Example:
  /// ```
  /// DateTime date = DateTime(2024, 11, 20, 14, 30);
  /// String formattedTime = DateFormatter.hhmm(date);
  /// print(formattedTime); // Output: 14:30
  /// ```
  static String hhmm(Duration duration) =>
      DateFormat('HH:mm').format(DateTime(0).add(duration));
}
