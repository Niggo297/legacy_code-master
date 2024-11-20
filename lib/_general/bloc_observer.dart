import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_bloc.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';

/// Observes all blocs - Until now we use it just saving the state to local storage
/// This may be replaced by a solution within the bloc in the future.
class CustomBlocObserver extends BlocObserver {
  static final _logger = const Logger('CustomBlocObserver', true);
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _logger('${bloc.runtimeType} $change', 'onChange');
    if (change.nextState is AbrechnungState) {
      _logger('AbrechnungState changed', 'onChange');
      if (change.nextState is! AbrechnungLoading) {
        final blocTyped = bloc as AbrechnungBloc;
        final curr = change.currentState as AbrechnungState?;
        final next = change.nextState as AbrechnungState;
        final localRepo = blocTyped.localStorageRepository;
        if (curr == null) return;
        if (curr.abrechnungPeriode != next.abrechnungPeriode) {
          _logger('Saving AbrechnungPeriode', 'onChange');
          localRepo.saveAbrechnungPeriode(next);
        }
        if (curr.abrechnungSettings != next.abrechnungSettings) {
          _logger('Saving AbrechnungSettings', 'onChange');
          localRepo.saveAbrechnungSettings(next);
        }
      }
    }
  }
}
