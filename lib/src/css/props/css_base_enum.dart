/// A base class for a CSS enum property.
///
/// Implementations should override [value] to provide the CSS property value.
abstract class CssBaseEnum {
  String get value;

  @override
  String toString() => value;
}
