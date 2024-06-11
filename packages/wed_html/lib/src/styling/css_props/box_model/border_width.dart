import 'package:wed_html/wed_html.dart';

/// {@template border_width}
/// Represents the CSS `border-width` property.
///
/// This class is used to define the width of the border for each side of an element. <br />
/// {@endtemplate}
class BorderWidth extends BaseCssProp {
  /// Creates a [BorderWidth] with the specified [top], [right], [bottom], and [left] borders. <br />
  ///
  /// {@macro border_width}
  const BorderWidth({
    this.top,
    this.right,
    this.bottom,
    this.left,
  });

  /// Creates a [BorderWidth] with the same border width for all sides.
  ///
  /// {@macro border_width}
  const BorderWidth.all(Units width)
      : top = width,
        right = width,
        bottom = width,
        left = width;

  /// Creates a [BorderWidth] with the same border width for the vertical sides and horizontal sides. <br />
  ///
  /// {@macro border_width}
  const BorderWidth.symmetric({
    Units? vertical,
    Units? horizontal,
  })  : top = vertical,
        right = horizontal,
        bottom = vertical,
        left = horizontal;

  /// Creates a [BorderWidth] with the specified [top], [right], [bottom], and [left] borders. <br />
  ///
  /// {@macro border_width}
  const BorderWidth.fromTRBL(
    this.top,
    this.right,
    this.bottom,
    this.left,
  );

  /// The width of the border for the top side of the element.
  final Units? top;

  /// The width of the border for the right side of the element.
  final Units? right;

  /// The width of the border for the bottom side of the element.
  final Units? bottom;

  /// The width of the border for the left side of the element.
  final Units? left;

  @override
  String get propValue => [
        top?.value ?? '0',
        right?.value ?? '0',
        bottom?.value ?? '0',
        left?.value ?? '0',
      ].join(' ');

  @override
  String get propName => 'border-width';
}
