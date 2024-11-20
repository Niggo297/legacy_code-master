import 'dart:developer';

/// Handles all logging. Every object instantiates its own logger.
/// - [callingObjectName]: The name of the calling object. This will be used for every log entry.
/// - [debug]: Yes, if the logger should write into debug console. Otherwise no.
///
/// The main idea is to put in place all the logging that is wanted, but to easily deactivate using
/// on a per-class-basis by just changing [debug] to false without having to uncomment the log code lines.
///
/// Usage:
/// ```dart
/// // ... (class attributes)
/// final logger = Logger('MyClass', true);
/// // ... (in a method)
/// logger('My log message);
/// ```

class Logger {
  /// The name of the calling object.
  final String callingObjectName;

  /// Should logging be active?
  final bool debug;

  /// Creates a new logger.
  const Logger(this.callingObjectName, this.debug);

  /// Logs a message. As [call] is the callable class method, it can be called without having to write it.
  ///
  /// Use:
  /// ```dart
  /// final logger = Logger('MyClass', true);
  /// logger('My log message);
  /// ```
  /// instead of:
  /// ```dart
  /// final logger = Logger('MyClass', true);
  /// logger.call('My log message);
  /// ```
  void call(String message, [String? functionName]) {
    if (debug) {
      log('$callingObjectName: ${functionName == null ? '' : '$functionName: '}$message');
    }
  }
}
