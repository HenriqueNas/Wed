import 'dart:html';

/// A base class for CSS properties.
///
/// Implementations should override [propName] and [value] to provide the CSS property name and value.

abstract class CssProp {
  /// The CSS property name.
  String get propName;

  /// The CSS property value.
  String get value;

  const CssProp();

  /// Converts the CSS property to a map that can be passed to a CSS style declaration.
  ///
  /// Returns a map containing the CSS property name and value.
  Map<String, String?> toMap() {
    return {propName: value};
  }

  /// Converts the CSS property to a `CssStyleDeclaration` object.
  ///
  /// Returns a `CssStyleDeclaration` object containing the Prop value.
  CssStyleDeclaration toStyle() {
    final style = CssStyleDeclaration();

    style.setProperty(propName, value);

    return style;
  }
}
