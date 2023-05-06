import 'dart:html';

/// [CssBaseProps] is a base class for a CSS class property (obviously).
///
/// Implementations should override [name] and [value] to provide the CSS property name and value.
abstract class CssBaseProps {

  const CssBaseProps();
  /// The CSS property name.
  String get name;

  /// The CSS property value.
  String get value;

  /// Converts the CSS property to a map that can be passed to a CSS style declaration.
  ///
  /// Returns a `Map<String, String?>` containing the CSS property name and value.
  Map<String, String?> toMap() {
    return {name: value};
  }

  /// Converts the CSS property to a [CssStyleDeclaration] object.
  ///
  /// Returns a [CssStyleDeclaration] object containing the Prop value.
  CssStyleDeclaration toStyle() {
    final style = CssStyleDeclaration();

    style.setProperty(name, value);

    return style;
  }

  @override
  String toString() => '$name: $value';
}
