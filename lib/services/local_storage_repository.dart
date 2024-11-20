import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_problem.dart';
import 'package:zeit_erfassung/abrechnung/entities/abrechnung_periode.dart';
import 'package:zeit_erfassung/abrechnung/entities/abrechnung_settings.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';

/// Handles storing data to the local device
class LocalStorageRepository {
  /// Filename of local storage for AbrechnungPeriode data
  static const fileNameAbrechnungPeriode = 'abrechnung_periode.json';

  /// Filename of local storage for AbrechnungSettings data
  static const fileNameAbrechnungSettings = 'abrechnung_settings.json';

  /// Saves AbrechnungPeriode data to local storage
  /// Returns true if successful
  /// Otherwise an exception is thrown (for testing purposes)
  Future<bool> saveAbrechnungPeriode(AbrechnungState state) => _saveState(
        json: state.abrechnungPeriode.toJson(),
        fileName: fileNameAbrechnungPeriode,
      );

  /// Saves AbrechnungSettings data to local storage
  /// Returns true if successful
  /// Otherwise an exception is thrown (for testing purposes)
  Future<bool> saveAbrechnungSettings(AbrechnungState state) => _saveState(
        json: state.abrechnungSettings.toJson(),
        fileName: fileNameAbrechnungSettings,
      );

  // ignore: public_member_api_docs
  Future<AbrechnungState> loadState() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final directoryPath = directory.path;
      final periodeFile = File('$directoryPath/$fileNameAbrechnungPeriode');
      final periodeString = await periodeFile.readAsString();
      final periodeJson = jsonDecode(periodeString) as Map<String, dynamic>;
      final periode = AbrechnungPeriode.fromJson(periodeJson);
      final settingsFile = File('$directoryPath/$fileNameAbrechnungSettings');
      final settingsString = await settingsFile.readAsString();
      final settingsJson = jsonDecode(settingsString) as Map<String, dynamic>;
      final settings = AbrechnungSettings.fromJson(settingsJson);
      return AbrechnungState(
          abrechnungPeriode: periode, abrechnungSettings: settings);
    } catch (e) {
      return AbrechnungProblematic(
        abrechnungPeriode: const AbrechnungPeriode(),
        abrechnungSettings: const AbrechnungSettings(),
        problem: StateCannotBeLoaded(),
      );
    }
  }

  Future<bool> _saveState({
    required Map<String, dynamic> json,
    required String fileName,
  }) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final directoryPath = directory.path;
      final file = File('$directoryPath/$fileName');
      final jsonEncoded = jsonEncode(json);
      await file.writeAsString(jsonEncoded);
    } catch (e) {
      return false;
    }
    return true;
  }
}
