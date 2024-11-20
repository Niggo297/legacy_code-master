// import 'package:zeit_erfassung/helpers/logger.dart';

import 'package:zeit_erfassung/abrechnung/entities/abrechnung_periode.dart';
import 'package:zeit_erfassung/abrechnung/entities/abrechnung_settings.dart';
import 'package:zeit_erfassung/abrechnung/entities/schicht.dart';

/// This object is used to calculate the times accumulated during a given
/// Schicht or Abrechnungperiode (multiple [Schicht]s).
class ZeitCalculator {
  /// The Schicht to calculate the times for
  final Schicht? schicht;

  /// The corresponding AbrechnungPeriode
  final AbrechnungPeriode? abrechnungPeriode;

  /// The corresponding AbrechnungSettings
  final AbrechnungSettings abrechnungSettings;
  // static final _logger = const Logger('ZeitCalculator', false);

  /// This object is used to calculate the times accumulated during a given
  /// Schicht or Abrechnungperiode (multiple [Schicht]s).
  const ZeitCalculator({
    required this.abrechnungSettings,
    this.schicht,
    this.abrechnungPeriode,
  })  : assert(schicht != null || abrechnungPeriode != null),
        super();

  /// Calculates the accumulated time for the given Schicht or AbrechnungPeriode.
  /// Returns a map with a String representing the category of this time and
  /// the corresponding time in minutes.

  Map<String, int> getMinutesForSchicht() {
    assert(schicht != null);
    final map = <String, int>{};
    for (var i = 0; i < schicht!.stempels.length - 1; i++) {
      final currStempel = schicht!.stempels[i];
      final nextStempel = schicht!.stempels[i + 1];
      final start =
          _roundDateTimeAccordingToSettings(currStempel.timestampEdited);
      final ende =
          _roundDateTimeAccordingToSettings(nextStempel.timestampEdited);
      final diff = ende.difference(start).inMinutes;
      currStempel.maybeWhen(
        arbeitszeit: (ts, tse) {
          map[currStempel.typeString] =
              (map[currStempel.typeString] ?? 0) + diff;
        },
        pause: (ts, tse) {
          map[currStempel.typeString] =
              (map[currStempel.typeString] ?? 0) + diff;
        },
        fahrt: (ts, tse, taetigkeit) {
          if (taetigkeit != null) {
            map['Einsatz@$taetigkeit'] =
                (map['Einsatz@$taetigkeit'] ?? 0) + diff;
          } else {
            map['${currStempel.typeString}'] =
                (map['${currStempel.typeString}'] ?? 0) + diff;
          }
        },
        einsatz: (ts, tse, einsatz) {
          map['${currStempel.typeString}@${einsatz.taetigkeitName}@${einsatz.kundeName}'] =
              (map['${currStempel.typeString}@${einsatz.taetigkeitName}@${einsatz.kundeName}'] ??
                      0) +
                  diff;
        },
        orElse: () {},
      );
    }
    return map;
  }

  /// Corrects the given dateTime according to the settings (rounding)
  DateTime _roundDateTimeAccordingToSettings(DateTime dateTime) {
    final inMinutes = dateTime
        .difference(DateTime(dateTime.year, dateTime.month, dateTime.day))
        .inMinutes;
    final inMinutesRounded = inMinutes % abrechnungSettings.rundenMinuten == 0
        ? (inMinutes ~/ abrechnungSettings.rundenMinuten) *
            abrechnungSettings.rundenMinuten
        : (inMinutes ~/ abrechnungSettings.rundenMinuten + 1) *
            abrechnungSettings.rundenMinuten;
    final rounded = DateTime(dateTime.year, dateTime.month, dateTime.day)
        .add(Duration(minutes: inMinutesRounded));
    return rounded;
  }
}
