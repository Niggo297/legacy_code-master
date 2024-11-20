import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_bloc.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';
import 'package:zeit_erfassung/abrechnung/views/timer_view/timer_view.dart';
import 'package:zeit_erfassung/abrechnung/views/timer_view/widgets/tickered_activity_time.dart';
import 'package:zeit_erfassung/abrechnung/views/timer_view/widgets/tickered_schicht_time.dart';
import 'package:zeit_erfassung/abrechnung/views/timer_view/widgets/tickered_time.dart';
import 'package:zeit_erfassung/abrechnung/views/widgets/problem_messenger.dart';
// import 'package:zeit_erfassung/helpers/logger.dart';

/// Page content in landscape format that shows some workday related timers and
/// makes it possible to place Stempel events.
class TimerViewLandscape extends StatelessWidget {
  /// Constructs page content in landscape format that shows some workday related timers and
  /// makes it possible to place Stempel events.
  const TimerViewLandscape({Key? key}) : super(key: key);
  // static final _logger = const Logger('TimerViewLandscape', false);

  @override
  Widget build(BuildContext context) => ProblemMessenger(
        child: BlocBuilder<AbrechnungBloc, AbrechnungState>(
          builder: (context, abrechnungState) {
            final schicht = abrechnungState.abrechnungPeriode.currentSchicht;
            // ignore: unused_local_variable
            final problem = abrechnungState.maybeWhen(
              (ap, as) => null,
              error: (ap, as, e) => e,
              orElse: () => null,
            );
            final currentStempel = schicht.currentStempel;
            final buttons = TimerView.getButtons(currentStempel);
            return Container(
              padding: const EdgeInsets.only(top: 4),
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: TickeredTime(
                            key: Key('tickered_time'),
                            hint: 'Uhrzeit',
                            icon: Icons.access_time,
                          ),
                        ),
                        Expanded(
                          child: TickeredSchichtTime(
                            key: Key('tickered_schicht_time'),
                            hint: 'Schichtzeit',
                            icon: Icons.timer,
                          ),
                        ),
                        Expanded(
                          child: TickeredActivityTime(
                            key: Key('tickered_taetigkeit_time'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (buttons.isNotEmpty)
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
                        child: Row(
                          children: [
                            Expanded(child: buttons[0]),
                            if (buttons.length > 1) Expanded(child: buttons[1]),
                            if (buttons.length > 2) Expanded(child: buttons[2]),
                            if (buttons.length > 3) Expanded(child: buttons[3]),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      );
}
