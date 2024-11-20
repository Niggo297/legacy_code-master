import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zeit_erfassung/_general/helpers/duration_formatter.dart';
import 'package:zeit_erfassung/abrechnung/views/timer_view/widgets/tickered_duration.dart';
// import 'package:zeit_erfassung/helpers/logger.dart';

/// Widget showing the current local time
class TickeredTime extends StatefulWidget {
  /// The helper text (label) next to the displayed time
  final String hint;

  /// The icon to display next to the displayed time
  final IconData icon;

  /// Creates an icon showing the current local time.
  const TickeredTime({
    required this.icon,
    required this.hint,
    Key? key,
  }) : super(key: key);

  @override
  State<TickeredTime> createState() => _TickeredTimeState(
        hint: hint,
        icon: icon,
      );
}

class _TickeredTimeState extends State<TickeredTime> {
  _TickeredTimeState({
    required this.hint,
    required this.icon,
  });

  late final Timer _timer;
  final String hint;
  final IconData icon;
  DateTime _time = DateTime.now();
  // static final _logger = const Logger('TickeredTime', false);

  @override
  Widget build(BuildContext context) {
    // String dauerFormatted;
    final duration =
        _time.difference(DateTime(_time.year, _time.month, _time.day));
    final durationFormatted = DurationFormatter.hhmm(duration);
    return TickeredDuration(
      icon: Icons.access_time,
      value: durationFormatted,
      hint: hint,
      isActive: true,
      showActivity: false,
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _time = DateTime.now();
      });
    });
  }
}
