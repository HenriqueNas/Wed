import '../../../../wed.dart';

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
/// Margin.all(value: 10)
/// ```
class Margin extends EdgeInsets {
  /// Creates an instance of `EdgeInsets` with the vertical and horizontal edges
  /// set to different values using the `vertical` and `horizontal` parameters.
  const Margin.symmetric({
    double vertical = 0,
    double horizontal = 0,
  }) : super.symmetric(
          vertical: vertical,
          horizontal: horizontal,
          type: EdgeInsetsTypes.margin,
        );

  /// Creates an instance of `EdgeInsets` with only the specified edges set
  const Margin.only({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
  }) : super.only(
          top: top,
          right: right,
          bottom: bottom,
          left: left,
          type: EdgeInsetsTypes.margin,
        );

  /// Creates an instance of `EdgeInsets` with all the edges set to the same value
  const Margin.all([double value = 0])
      : super.all(
          value: value,
          type: EdgeInsetsTypes.margin,
        );

  /// Creates an instance of `EdgeInsets` with each edge individually set
  const Margin.fromTRLB(
    double top,
    double right,
    double bottom,
    double left,
  ) : super.fromTRLB(
          top,
          right,
          bottom,
          left,
          type: EdgeInsetsTypes.margin,
        );

  /// Creates an instance of `EdgeInsets` with each edge individually set
  const Margin() : super(type: EdgeInsetsTypes.margin);
  @override
  EdgeInsetsTypes get type => EdgeInsetsTypes.margin;
}
