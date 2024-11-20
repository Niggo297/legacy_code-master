import 'package:flutter_test/flutter_test.dart';
import 'package:zeit_erfassung/abrechnung/entities/abrechnung_periode.dart';

void main() {
  test('Object creation', () {
    final ap = const AbrechnungPeriode();
    expect(ap.schichten.length, 1);
  });
}
