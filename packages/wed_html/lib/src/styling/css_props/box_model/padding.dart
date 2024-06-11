import 'package:wed_html/src/styling/exports.dart';

/// {@template padding}
/// This code defines a Padding class that extends the EdgeInsets class.
/// It is used to represent the padding of an element in CSS.
///
/// The `padding` property is a shorthand property for setting the padding
/// of all four sides of an element at once.
///
/// The Padding class has several constructors, which allow for the creation
/// of padding with different values.
/// {@endtemplate}
class Padding extends Edges {
  /// The const Padding() constructor takes four optional parameters
  /// (top, right, bottom, and left),
  const Padding(
    super.top,
    super.right,
    super.bottom,
    super.left,
  ) : super.fromTRLB(type: EdgesTypes.padding);

  /// The const Padding.all() constructor takes one optional parameter (value),
  /// which specifies the padding for all four sides of the element.
  const Padding.all([
    double value = 0,
  ]) : super.all(value: value, type: EdgesTypes.padding);

  /// The const Padding.only() constructor takes four optional parameters
  /// (top, right, bottom, and left),
  /// which specify the padding for only the specified sides of the element.
  const Padding.only({
    super.top,
    super.right,
    super.bottom,
    super.left,
  }) : super.only(
          type: EdgesTypes.padding,
        );

  /// The const Padding.symmetric() constructor takes two optional parameters
  /// (vertical and horizontal),
  /// which specify the padding for the vertical and horizontal
  /// sides of the element
  const Padding.symmetric({
    super.vertical,
    super.horizontal,
  }) : super.symmetric(
          type: EdgesTypes.padding,
        );

  @override
  EdgesTypes get type => EdgesTypes.padding;
}
