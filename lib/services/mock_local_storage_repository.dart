import 'package:zeit_erfassung/abrechnung/entities/abrechnung_periode.dart';
import 'package:zeit_erfassung/abrechnung/entities/abrechnung_settings.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';
import 'package:zeit_erfassung/services/local_storage_repository.dart';

/// Mock implementation of the [LocalStorageRepository]
/// At the moment, it does not do much, only NOT saving to local file
class MockLocalStorageRepository implements LocalStorageRepository {
  /// Creates a mock implementation of the [LocalStorageRepository]
  const MockLocalStorageRepository();

  /// Filename for the local storage of AbrechnungPeriode data
  static const fileNameAbrechnungPeriode = 'test_abrechnung_periode.json';

  /// Filename for the local storage of AbrechnungSettings data
  static const fileNameAbrechnungSettings = 'test_abrechnung_settings.json';

  /// Saves the given [state] to the local storage, but only the AbrechnungSettings part.
  @override
  Future<bool> saveAbrechnungPeriode(AbrechnungState state) => _saveState(
        json: state.abrechnungPeriode.toJson(),
        fileName: fileNameAbrechnungPeriode,
      );

  /// Saves the given [state] to the local storage, but only the AbrechnungPeriode part.
  @override
  Future<bool> saveAbrechnungSettings(AbrechnungState state) => _saveState(
        json: state.abrechnungSettings.toJson(),
        fileName: fileNameAbrechnungSettings,
      );

  /// Loads the AbrechnungState from the local storage
  @override
  Future<AbrechnungState> loadState() async => const AbrechnungState(
      abrechnungPeriode: AbrechnungPeriode(),
      abrechnungSettings: AbrechnungSettings());

  Future<bool> _saveState({
    required Map<String, dynamic> json,
    required String fileName,
  }) async =>
      true;
  // try {
  //   final directory = await getApplicationDocumentsDirectory();
  //   final directoryPath = directory.path;
  //   final file = File('$directoryPath/$fileName');
  //   final jsonEncoded = jsonEncode(json);
  //   await file.writeAsString(jsonEncoded);
  // } catch (e) {
  //   throw Exception('Error while saving state: $e');
  // }
}
