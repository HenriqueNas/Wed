/// {@template Props}
/// A base class for a CSS enum property.
///
/// Implementations should override [value] to provide the CSS property value.
/// {@endtemplate}
abstract class CssEnumProps {
  /// The CSS property value.
  String get value;

  @override
  String toString() => value;
}
