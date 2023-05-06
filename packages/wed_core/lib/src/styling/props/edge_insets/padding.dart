import '../../../../wed_core.dart';

///This code defines a Padding class that extends the EdgeInsets class. It is used to represent the padding of an element in CSS.
///
///The `padding` property is a shorthand property for setting the padding of all four sides of an element at once.
///
///The Padding class has several constructors, which allow for the creation of padding with different values.
class Padding extends EdgeInsets {
  /// Creates a `Padding` instance with a `type` value of `EdgeInsetsTypes.padding`.
  const Padding(
    double top,
    double right,
    double bottom,
    double left,
  ) : super.fromTRLB(top, right, bottom, left, type: EdgeInsetsTypes.padding);

  /// The const Padding.all() constructor takes a single optional parameter value,
  /// which specifies the same padding value for all sides of the element.

  const Padding.all([
    double value = 0,
  ]) : super.all(value: value, type: EdgeInsetsTypes.padding);

  /// The const Padding.only() constructor takes four optional parameters (top, right, bottom, and left),
  /// which specify the padding for only the specified sides of the element.
  const Padding.only({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
  }) : super.only(
          top: top,
          right: right,
          bottom: bottom,
          left: left,
          type: EdgeInsetsTypes.padding,
        );

  /// The const Padding.symmetric() constructor takes two optional parameters (vertical and horizontal),
  /// which specify the padding for the vertical and horizontal sides of the element.
  const Padding.symmetric({
    double vertical = 0,
    double horizontal = 0,
  }) : super.symmetric(
          vertical: vertical,
          horizontal: horizontal,
          type: EdgeInsetsTypes.padding,
        );
  @override
  EdgeInsetsTypes get type => EdgeInsetsTypes.padding;
}
