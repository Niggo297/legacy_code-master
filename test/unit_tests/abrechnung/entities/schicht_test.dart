import 'package:flutter_test/flutter_test.dart';
import 'package:zeit_erfassung/abrechnung/entities/schicht.dart';

void main() {
  test('Object creation', () {
    final s = const Schicht();
    expect(s.stempels, isEmpty);
  });
}
