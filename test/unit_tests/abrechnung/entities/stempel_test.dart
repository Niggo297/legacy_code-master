import 'package:flutter_test/flutter_test.dart';
import 'package:zeit_erfassung/abrechnung/entities/stempel.dart';

void main() {
  test('Object creation: Arbeitszeit', () {
    final timestamp = DateTime.now();
    final s = ArbeitszeitStempel(timestamp: timestamp, timestampEdited: timestamp);
    expect(s.timestamp, timestamp);
    expect(s.timestampEdited, timestamp);
  });
}
