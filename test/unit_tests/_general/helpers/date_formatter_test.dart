import 'package:flutter_test/flutter_test.dart';
import 'package:zeit_erfassung/_general/helpers/date_formatter.dart';

void main() {
  test('ddMMyyyy', () {
    expect(DateFormatter.ddMMyyyy(DateTime(2022, 4, 8)), '08.04.2022');
    expect(DateFormatter.ddMMyyyy(DateTime(2020, 12, 31)), '31.12.2020');
  });

  test('HHmm', () {
    expect(DateFormatter.hhmm(DateTime(2022, 4, 8, 17, 30)), '17:30');
    expect(DateFormatter.hhmm(DateTime(1999, 5, 3, 8, 30)), '08:30');
  });
}
