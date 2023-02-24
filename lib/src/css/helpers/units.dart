// ignore_for_file: public_member_api_docs
class Units {
  const Units._(this._value);

  final String _value;

  String get value => _value;

  static String px(double value) =>
      Units._('$value${UnitsTypes.pixel.symbol}')._value;

  static String vh(double value) =>
      Units._('$value${UnitsTypes.viewHeight.symbol}')._value;

  static String vw(double value) =>
      Units._('$value${UnitsTypes.viewWidth.symbol}')._value;

  static String percent(double value) =>
      Units._('$value${UnitsTypes.percentage.symbol}')._value;

  static String rem(double value) =>
      Units._('$value${UnitsTypes.rem.symbol}')._value;

  static String get none => const Units._('0')._value;

  String call() => _value;
}

enum UnitsTypes {
  pixel('px'),
  viewHeight('vh'),
  viewWidth('vw'),
  percentage('%'),
  rem('rem');

  const UnitsTypes(this.symbol);

  final String symbol;
}
