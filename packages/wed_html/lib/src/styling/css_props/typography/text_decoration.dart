import 'package:wed_html/wed_html.dart';

/// {@template text_decoration}
/// Represents the CSS `text-decoration` property.
///
/// The text-decoration shorthand CSS property sets the appearance of
/// decorative lines on text.
/// It is a shorthand for `text-decoration-line`, `text-decoration-color`,
/// `text-decoration-style`, and the newer `text-decoration-thickness` property.
///
/// {@endtemplate}
class TextDecoration extends BaseCssProp {
  /// Creates a [TextDecoration] with the specified
  /// [line], [style], [color], and [thickness].
  ///
  /// {@macro text_decoration}
  const TextDecoration({
    this.line,
    this.style,
    this.color,
    this.thickness,
  });

  /// The text decoration line.
  final TextDecorationLine? line;

  /// The text decoration style.
  final TextDecorationStyle? style;

  /// The text decoration color.
  final Color? color;

  /// The text decoration thickness.
  final Units? thickness;

  @override
  String get propValue => [
        line?.propValue ?? '',
        style?.propValue ?? '',
        color?.toRGBString() ?? '',
        thickness?.value ?? '',
      ].join(' ');

  @override
  String get propName => 'class';
}

/// Represents the CSS `text-decoration-line` property.
///
/// The text-decoration-line CSS property sets the kind of decoration that is
/// used on text in an element, such as an underline or overline.
enum TextDecorationLine with CssPropMixin {
  /// No text decoration is applied.
  none,

  /// A line is drawn under the text.
  underline,

  /// A line is drawn over the text.
  overline,

  /// A line is drawn through the text.
  lineThrough,

  /// Sets this property to its default value.
  initial,

  /// Inherits this property from its parent element.
  inherit;

  @override
  String get propValue {
    final value = switch (this) {
      TextDecorationLine.lineThrough => 'line-through',
      _ => name,
    };

    return value;
  }

  @override
  String get propName => 'text-decoration-line';
}

/// Represents the CSS `text-decoration-style` property.
///
/// The text-decoration-style CSS property sets the style
/// of the lines specified by text-decoration-line.
/// The style applies to all lines that are set with `text-decoration-line`.
enum TextDecorationStyle with CssPropMixin {
  /// No text decoration is applied.
  none,

  /// A line is drawn under the text.
  underline,

  /// A line is drawn over the text.
  overline,

  /// A line is drawn through the text.
  lineThrough,

  /// Sets this property to its default value.
  initial,

  /// Inherits this property from its parent element.
  inherit;

  @override
  String get propValue {
    final value = switch (this) {
      TextDecorationStyle.lineThrough => 'line-through',
      _ => name,
    };

    return value;
  }

  @override
  String get propName => 'text-decoration-style';
}
