import 'dart:html';

/// {@template css_base_prop}
/// [BaseCssProp] is a base class for a CSS class property (obviously).
///
/// Implementations should override [propName] and [propValue]
/// to provide the CSS property name and value.
/// {@endtemplate}
abstract class BaseCssProp {
  /// Creates an instance of [BaseCssProp].
  const BaseCssProp();

  /// The CSS property name.
  String get propName;

  /// The CSS property value.
  String get propValue;

  /// Converts the CSS property to a map that can be passed
  /// to a CSS style declaration.
  ///
  /// Returns a `Map<String, String?>`
  /// containing the CSS property name and value.
  Map<String, String?> toMap() {
    return {propName: propValue};
  }

  /// Converts the CSS property to a [CssStyleDeclaration] object.
  ///
  /// Returns a [CssStyleDeclaration] object containing the Prop value.
  CssStyleDeclaration toStyle() {
    final style = CssStyleDeclaration()..setProperty(propName, propValue);

    return style;
  }

  @override
  String toString() => '$propName: $propValue';
}

/// A mixin that implements [BaseCssProp].
mixin CssPropMixin implements BaseCssProp {
  @override
  Map<String, String?> toMap() => {propName: propValue};

  @override
  CssStyleDeclaration toStyle() {
    final style = CssStyleDeclaration()..setProperty(propName, propValue);

    return style;
  }

  @override
  String toString() => '$propName: $propValue';
}
