class Units {
  final String _value;
  String get value => _value;

  const Units._(this._value);

  static px(int value) => Units._("$value${UnitsTypes.pixel.symbol}")._value;

  static vh(int value) =>
      Units._("$value${UnitsTypes.viewHeight.symbol}")._value;

  static vw(int value) =>
      Units._("$value${UnitsTypes.viewWidth.symbol}")._value;

  static percent(int value) =>
      Units._("$value${UnitsTypes.percentage.symbol}")._value;

  static rem(int value) => Units._("$value${UnitsTypes.rem.symbol}")._value;

  static get none => Units._("0")._value;

  call() => _value;
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
