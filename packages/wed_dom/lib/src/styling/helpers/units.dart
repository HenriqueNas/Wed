/// {@template units}
/// Units helper class for styling
///
/// ```dart
/// import 'package:wed_dom/wed_dom.dart';
///
/// final style = Style(
///   width: Units.px(100),
///   height: Units.vh(100),
/// );
/// ```
/// {@endtemplate}
class Units {
  /// Creates a [Units] instance. <br />
  /// {@macro units}
  const Units._(
    this.value,
    this.type,
  );

  /// Creates a [Units] instance with the type of [UnitsType.pixel].
  const Units.px(double value) : this._('$value', UnitsType.pixel);

  /// Creates a [Units] instance with the type of [UnitsType.viewWidth].
  const Units.vh(double value) : this._('$value', UnitsType.viewHeight);

  /// Creates a [Units] instance with the type of [UnitsType.viewHeight].
  const Units.vw(double value) : this._('$value', UnitsType.viewWidth);

  /// Creates a [Units] instance with the type of [UnitsType.percentage].
  const Units.percent(double value) : this._('$value', UnitsType.percentage);

  /// Creates a [Units] instance with the type of [UnitsType.rem].
  const Units.rem(double value) : this._('$value', UnitsType.rem);

  /// Creates a [Units] with `value` equal to `0` and `type` of `null`.
  const Units.none() : this._('0', null);

  /// Returns the value of the [Units] instance.
  final String value;

  /// Returns the type of the [Units] instance.
  final UnitsType? type;

  @override
  String toString() => '$value${type?.symbol}';
}

/// {@template units_type}
/// The [UnitsType] enum have the units types for styling:
///
/// - [UnitsType.pixel] => `px`
/// - [UnitsType.viewHeight] => `vh`
/// - [UnitsType.viewWidth] => `vw`
/// - [UnitsType.percentage] => `%`
/// - [UnitsType.rem] => `rem`
///
/// {@endtemplate}
enum UnitsType {
  /// `px`
  pixel('px'),

  /// `vh`
  viewHeight('vh'),

  /// `vw`
  viewWidth('vw'),

  /// `%`
  percentage('%'),

  /// `rem`
  rem('rem');

  const UnitsType(this.symbol);

  /// The symbol of the unit type.
  final String symbol;
}
