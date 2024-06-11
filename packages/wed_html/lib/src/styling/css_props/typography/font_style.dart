import 'package:wed_html/wed_html.dart';

/// Represents the CSS `font-style` property.
enum FontStyle with CssPropMixin {
  /// The font is normal.
  normal,

  /// The font is italic.
  italic,

  /// The font is oblique.
  oblique,

  /// Sets this property to its default value.
  initial,

  /// Inherits this property from its parent element.
  inherit;

  @override
  String get propValue => name;

  @override
  String get propName => 'font-style';
}
