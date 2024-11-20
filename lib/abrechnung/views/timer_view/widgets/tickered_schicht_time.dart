import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/_general/helpers/duration_formatter.dart';

import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_bloc.dart';
import 'package:zeit_erfassung/abrechnung/entities/stempel.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';
import 'package:zeit_erfassung/abrechnung/views/timer_view/widgets/tickered_duration.dart';

/// Widget to display the time since the beginning of the workday (first Stempel)
class TickeredSchichtTime extends StatefulWidget {
  /// Creates a widget to display the time since the beginning of the workday.
  const TickeredSchichtTime({
    required this.icon,
    required this.hint,
    Key? key,
  }) : super(key: key);

  /// A small helper text next to the displayed time. (e.g. "Schichtzeit")
  final String hint;

  /// The icon to display next to the displayed time.
  final IconData icon;
  // static final _logger = const Logger('TickeredSchichtTime', false);

  @override
  State<TickeredSchichtTime> createState() => _TickeredSchichtTimeState(
        hint: hint,
        icon: icon,
      );
}

class _TickeredSchichtTimeState extends State<TickeredSchichtTime> {
  _TickeredSchichtTimeState({
    required this.hint,
    required this.icon,
  });
  late final Timer _timer;
  final String hint;
  final IconData icon;

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
          final schichtBeginn = schicht.stempels.isNotEmpty
              ? schicht.stempels.first.timestampEdited
              : null;
          final schichtEnde = schicht.stempels.isEmpty
              ? null
              : (schicht.stempels.last is! EndeStempel
                  ? _time
                  : schicht.stempels.last.timestampEdited);
          final duration = (schichtBeginn != null && schichtEnde != null)
              ? schichtEnde.difference(schichtBeginn)
              : null;
          final durationFormatted =
              duration != null ? DurationFormatter.hhmm(duration) : '--:--';
          final isActive = schicht.stempels.isNotEmpty &&
              schicht.stempels.last is! EndeStempel;
          return TickeredDuration(
            icon: Icons.timer_outlined,
            value: durationFormatted,
            hint: hint,
            isActive: isActive,
            showActivity: true,
          );
        },
      );
}
