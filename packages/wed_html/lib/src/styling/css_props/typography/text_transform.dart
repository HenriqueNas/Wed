import 'package:wed_html/wed_html.dart';

/// Represents the CSS `text-transform` property.
///
/// The text-transform CSS property specifies how to capitalize
/// an element's text. It can be used to make text appear in all-uppercase
/// or all-lowercase, or with each word capitalized.
enum TextTransform with CssPropMixin {
  /// The text is not transformed.
  none,

  /// The text is transformed to uppercase.
  uppercase,

  /// The text is transformed to lowercase.
  lowercase,

  /// The text is transformed to capitalize.
  capitalize,

  /// Sets this property to its default value.
  initial,

  /// Inherits this property from its parent element.
  inherit;

  @override
  String get propValue => name;

  @override
  String get propName => 'text-transform';
}
