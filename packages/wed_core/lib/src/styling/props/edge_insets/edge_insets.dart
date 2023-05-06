import '../../../../wed_core.dart';

/// A class representing CSS `margin`, `padding`, or `border` edge insets.
///
/// The edge insets can be set in a variety of ways:
///
/// * `all`: Set all the edges to the same value using the `value` parameter.
/// * `fromTRLB`: Set each edge individually using the `top`, `right`, `bottom`, and `left` parameters.
/// * `only`: Set only the specified edges using the `top`, `right`, `bottom`, and `left` parameters.
/// * `symmetric`: Set the vertical and horizontal edges to different values using the `vertical` and `horizontal` parameters.
///
/// For example, to create a margin of `10px` on all edges:
///
/// ```dart
/// EdgeInsets.all(value: 10)
/// ```
///
/// To create a padding of `10px` on the top and bottom edges, and `20px`
/// on the left and right edges:
///
/// ```dart
/// EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)
/// ```
///
/// The `type` parameter determines whether the edge insets are for
/// `margin`, `padding`, or `border`. The `value` of the
/// `CssBaseProps` superclass is set to a string representation of the edge
/// insets in the format `'${top}px ${right}px ${bottom}px ${left}px'`.
class EdgeInsets extends CssBaseProps {
  /// Creates an instance of `EdgeInsets` with the vertical and horizontal edges
  /// set to different values using the `vertical` and `horizontal` parameters.
  ///
  /// The `type` parameter specifies whether the edge insets are for `margin`,
  /// `padding`, or `border`.
  ///
  /// The `vertical` parameter sets the `top` and `bottom` edges.
  /// The `horizontal` parameter sets the `left` and `right` edges.
  const EdgeInsets.symmetric({
    this.type = EdgeInsetsTypes.margin,
    double vertical = 0,
    double horizontal = 0,
  })  : top = vertical,
        right = horizontal,
        bottom = vertical,
        left = horizontal;

  /// Creates an instance of `EdgeInsets` with only the specified edges set
  /// using the `top`, `right`, `bottom`, and `left` parameters.
  ///
  /// The `type` parameter specifies whether the edge insets are for `margin`,
  /// `padding`, or `border`.
  const EdgeInsets.only({
    this.type = EdgeInsetsTypes.margin,
    this.top = 0,
    this.right = 0,
    this.bottom = 0,
    this.left = 0,
  });

  /// Creates an instance of `EdgeInsets` with all edge insets set
  /// to the same value using the `value` parameter.
  ///
  /// The `type` parameter specifies whether the edge insets are for
  /// `margin`, `padding`, or `border`.
  const EdgeInsets.all({
    this.type = EdgeInsetsTypes.margin,
    required double value,
  })  : top = value,
        right = value,
        bottom = value,
        left = value;

  /// Creates an instance of `EdgeInsets` with edge insets set individually
  /// using the `top`, `right`, `bottom`, and `left` parameters.
  ///
  /// The `type` parameter specifies whether the edge insets are for
  /// `margin`, `padding`, or `border`.
  const EdgeInsets.fromTRLB(
    this.top,
    this.right,
    this.bottom,
    this.left, {
    this.type = EdgeInsetsTypes.margin,
  });

  /// Creates an instance of `EdgeInsets` with all edge insets default `0`.
  const EdgeInsets({
    this.type = EdgeInsetsTypes.margin,
  })  : top = 0,
        right = 0,
        bottom = 0,
        left = 0;

  /// The type of edge insets. Can be `margin`, `padding`, or `border`.
  final EdgeInsetsTypes type;

  /// The top edge inset.
  final double top;

  /// The right edge inset.
  final double right;

  /// The bottom edge inset.
  final double bottom;

  /// The left edge inset.
  final double left;

  @override
  String get name => type.name;

  @override
  String get value => '${top}px ${right}px ${bottom}px ${left}px';
}

/// Enum class for the different types of edge insets.
enum EdgeInsetsTypes {
  /// The edge insets are for `margin`.
  margin,

  /// The edge insets are for `padding`.
  padding,

  /// The edge insets are for `border`.
  border;
}
