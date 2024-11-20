import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/_general/helpers/functions.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_bloc.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';

/// Widget to wrap around content widgets. The only purpose is to
/// eventually display a snackbar with the current error status, if there is one.
class ProblemMessenger extends StatelessWidget {
  /// Creates a widget to wrap around content widgets. The only purpose is to
  /// eventually display a snackbar with the current error status, if there is one.
  const ProblemMessenger({required this.child, Key? key}) : super(key: key);

  static final _logger = const Logger('ProblemMessenger', false);

  /// The content this ProblemMessenger should be wrapped around
  final Widget child;

  @override
  Widget build(BuildContext context) =>
      BlocListener<AbrechnungBloc, AbrechnungState>(
        listener: (context, abrechnungState) {
          _logger('runs', 'build');
          if (abrechnungState is AbrechnungProblematic) {
            _logger('Problem detected', 'build');

            //, also ein bereits vorkonfiguriertes Scnackbar für unsere Fehlermeldungen
            F.showCustomSnackbar(
              'Problem: ${abrechnungState.problem.message}',
              backgroundColor: Colors.red,
              textColor: Colors.yellow,
              context: context,
            );
          }
        },
        child: child,
      );
}
