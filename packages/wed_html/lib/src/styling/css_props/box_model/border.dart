import 'package:wed_html/src/styling/exports.dart';

/// {@template border}
/// Represents a CSS border for an element.
/// {@endtemplate}
class Border extends BaseCssProp {
  /// Creates a [Border] with the specified [style], [width], and [color].
  const Border({
    this.style,
    this.width,
    this.color,
  });

  /// Creates a [Border] with no border.
  const Border.none()
      : style = BorderStyle.none,
        width = null,
        color = null;

  /// The border style (e.g., 'solid', 'dashed', 'dotted').
  final BorderStyle? style;

  /// The border width (e.g., '1px', '2em').
  final Units? width;

  /// The border color.
  final Color? color;

  @override
  String get propName => 'border';

  @override
  String get propValue {
    final style = this.style?.propValue ?? '';
    final width = this.width?.value ?? '';
    final color = this.color?.toRGBString() ?? '';

    return '$style $width $color';
  }
}

/// {@template border_side}
/// Represents a CSS border for a specific side of an element.
///
/// This class is used to define the border for each side of an element.
/// {@endtemplate}
class BorderSide extends BaseCssProp {
  /// Creates a [BorderSide] with the specified [top], [right], [bottom], and [left] borders. <br />
  ///
  /// {@macro border_side}
  const BorderSide.only({
    this.top,
    this.right,
    this.bottom,
    this.left,
  });

  /// Creates a [BorderSide] with the same border for all sides.
  ///
  /// {@macro border_side}
  const BorderSide.all(Border border)
      : top = border,
        right = border,
        bottom = border,
        left = border;

  /// Creates a [BorderSide] with the same border for the vertical sides and horizontal sides. <br />
  ///
  /// {@macro border_side}
  const BorderSide.symmetric({
    Border? vertical,
    Border? horizontal,
  })  : top = vertical,
        right = horizontal,
        bottom = vertical,
        left = horizontal;

  /// Creates a [BorderSide] with the specified [top], [right], [bottom], and [left] borders. <br />
  ///
  /// {@macro border_side}
  const BorderSide.fromTRBL(
    this.top,
    this.right,
    this.bottom,
    this.left,
  );

  /// The border for the top side of the element.
  final Border? top;

  /// The border for the right side of the element.
  final Border? right;

  /// The border for the bottom side of the element.
  final Border? bottom;

  /// The border for the left side of the element.
  final Border? left;

  @override
  String get propValue => [
        top?.propValue ?? '0',
        right?.propValue ?? '0',
        bottom?.propValue ?? '0',
        left?.propValue ?? '0',
      ].join(' ');

  @override
  String get propName => 'border-side';
}
