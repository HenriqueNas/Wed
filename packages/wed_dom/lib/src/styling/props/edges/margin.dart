import 'package:wed_dom/src/styling/exports.dart';

/// {@template margin}
/// A class representing CSS `margin`, `padding`, or `border` edge insets.
///
/// The edge insets can be set in a variety of ways:
///
/// * `all`: Set all the edges to the same value using the `value` parameter.
/// * `fromTRLB`: Set each edge individually using the `top`, `right`, `bottom`,
/// and `left` parameters.
/// * `only`: Set only the specified edges using the `top`, `right`, `bottom`,
///  and `left` parameters.
/// * `symmetric`: Set the vertical and horizontal edges to different values
/// using the `vertical` and `horizontal` parameters.
///
/// For example, to create a margin of `10px` on all edges:
///
/// ```dart
/// Margin.all(value: 10)
/// ```
///
/// {@endtemplate}
class Margin extends Edges {
  /// Creates an instance of `EdgeInsets` with each edge individually set
  const Margin() : super(type: EdgesTypes.margin);

  /// Creates an instance of `EdgeInsets` with the vertical and horizontal edges
  /// set to different values using the `vertical` and `horizontal` parameters.
  const Margin.symmetric({
    super.vertical,
    super.horizontal,
  }) : super.symmetric(type: EdgesTypes.margin);

  /// Creates an instance of `EdgeInsets` with only the specified edges set
  const Margin.only({
    super.top,
    super.right,
    super.bottom,
    super.left,
  }) : super.only(type: EdgesTypes.margin);

  /// Creates an instance of `EdgeInsets` with all the edges with the same value
  const Margin.all([double value = 0])
      : super.all(value: value, type: EdgesTypes.margin);

  /// Creates an instance of `EdgeInsets` with each edge individually set
  const Margin.fromTRLB(
    super.top,
    super.right,
    super.bottom,
    super.left,
  ) : super.fromTRLB(type: EdgesTypes.margin);

  @override
  EdgesTypes get type => EdgesTypes.margin;
}
