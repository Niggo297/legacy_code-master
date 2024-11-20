// ignore_for_file: public_member_api_docs

import 'package:money2/money2.dart';

class EuroFormatter {
  static final _euro = Currency.create(
    'EUR',
    2,
    symbol: '€',
    pattern: '#.##0,00 €',
    invertSeparators: true,
    country: 'Europe',
    unit: 'Euro',
    name: 'Euro',
  );

  static String withSymbolFromCents(int value) {
    final money = Money.fromIntWithCurrency(value, _euro);
    return '$money';
  }

  static String withSymbolFromCentiCents(int value) {
    final money = Money.fromIntWithCurrency(value, _euro, scale: 4);
    return '$money';
  }

  static String withoutSymbolFromDoubleString(String value) {
    final money = Money.parseWithCurrency(value, _euro);
    final moneyStr = money.format('#.##0,00');
    return moneyStr;
  }

  static String withSymbolFromDoubleString(String value) {
    final money = Money.parseWithCurrency(value, _euro);
    return '$money';
  }

  static int asCentiCentsFromDoubleString(String value) {
    final money = Money.parseWithCurrency(value, _euro);
    return money.minorUnits.toInt() * 100;
  }
}
