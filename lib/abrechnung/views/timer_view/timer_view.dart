import 'package:flutter/material.dart';
import 'package:zeit_erfassung/abrechnung/entities/stempel.dart';
import 'package:zeit_erfassung/abrechnung/views/timer_view/timer_view_landscape.dart';
import 'package:zeit_erfassung/abrechnung/views/timer_view/timer_view_portrait.dart';
import 'package:zeit_erfassung/abrechnung/views/timer_view/widgets/action_buttons.dart';
// import 'package:zeit_erfassung/helpers/logger.dart';

/// Page to show the current time and the current shift
class TimerView extends StatelessWidget {
  /// Constructs the page to show the current time and the current shift
  const TimerView({Key? key}) : super(key: key);
  // static final _logger = const Logger('TimerView', false);

  @override
  Widget build(BuildContext context) => OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return const TimerViewPortrait();
        } else {
          return const TimerViewLandscape();
        }
      });

  /// Returns the buttons that should be shown based on the current Stempel state
  static List<Widget> getButtons(Stempel? currentStempel) {
    final possibleOptions = currentStempel?.possibleOptions ?? <String>[];
    final buttons = <Widget>[];
    if (currentStempel == null || possibleOptions.contains('StarteArbeitszeit')) {
      buttons.add(const ActionButtonStarteArbeitszeit());
    }
    if (possibleOptions.contains('StarteEinsatz')) {
      buttons.add(const ActionButtonStarteEinsatz());
    }
    if (possibleOptions.contains('BeendeEinsatz')) {
      buttons.add(const ActionButtonBeendeEinsatz());
    }
    if (possibleOptions.contains('StarteFahrt')) {
      buttons.add(const ActionButtonStarteFahrt());
    }
    if (possibleOptions.contains('BeendeFahrt')) {
      buttons.add(const ActionButtonBeendeFahrt());
    }
    if (possibleOptions.contains('StartePause')) {
      buttons.add(const ActionButtonStartePause());
    }
    if (possibleOptions.contains('BeendePause')) {
      buttons.add(const ActionButtonBeendePause());
    }
    if (possibleOptions.contains('BeendeArbeitszeit')) {
      buttons.add(const ActionButtonBeendeArbeitszeit());
    }
    return buttons;
  }
}
