import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/_general/helpers/duration_formatter.dart';

import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_bloc.dart';
import 'package:zeit_erfassung/abrechnung/entities/stempel.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';
import 'package:zeit_erfassung/abrechnung/views/timer_view/widgets/tickered_duration.dart';
// import 'package:zeit_erfassung/helpers/logger.dart';

/// Widget showing the time passed since we started the last activity.
class TickeredActivityTime extends StatefulWidget {
  /// Constructs the widget showing the time passed since we started the last activity.
  const TickeredActivityTime({
    Key? key,
  }) : super(key: key);

  @override
  State<TickeredActivityTime> createState() => _TickeredActivityTimeState();
}

class _TickeredActivityTimeState extends State<TickeredActivityTime> {
  _TickeredActivityTimeState();

  // static final _logger = const Logger('TickeredActivityTime', false);
  late final Timer _timer;

  DateTime _time = DateTime.now();

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _time = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AbrechnungBloc, AbrechnungState>(
        builder: (context, abrechnungState) {
          final schicht = abrechnungState.abrechnungPeriode.currentSchicht;
          Stempel? currentStempel;
          String? currentActivity;
          DateTime? currentStempelTime;
          Duration? duration;
          String durationFormatted;
          var isActive = false;
          var icon = Icons.question_mark;
          if (schicht.stempels.isNotEmpty &&
              schicht.stempels.last is! EndeStempel) {
            currentStempel = schicht.stempels.last;
            currentActivity = currentStempel.typeString;
            currentStempelTime = currentStempel.timestampEdited;
            duration = _time.difference(currentStempelTime);
            isActive = true;
            icon = currentStempel.icon;
          }
          durationFormatted =
              duration != null ? DurationFormatter.hhmm(duration) : '--:--';
          return TickeredDuration(
            icon: icon,
            value: durationFormatted,
            hint: 'Aktion: ${currentActivity ?? 'Keine'}',
            isActive: isActive,
            showActivity: true,
          );
        },
      );
}
