import 'css_prop.dart';

/// A class representing a border radius for a box.
///
/// The border radius can be set for all corners, or for individual corners.
///
/// Example usage:
///
/// ```dart
/// // Set a 20px border radius for all corners
/// final borderRadius = BorderRadius.all(20);
///
/// // Set a 10px border radius for the top left and bottom right corners
/// final borderRadius = BorderRadius.only(
///   topLeft: 10,
///   bottomRight: 10,
/// );
///
/// // Set a 5px border radius for the left side
/// final borderRadius = BorderRadius.left(5);
/// ```
class BorderRadius extends CssProp {
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;

  /// Creates a [BorderRadius] object with the specified radii.
  ///
  /// All four corners are set to the same radius, [radius].
  const BorderRadius.all([double radius = 0])
      : this.only(
          topLeft: radius,
          topRight: radius,
          bottomLeft: radius,
          bottomRight: radius,
        );

  /// Creates a [BorderRadius] object with only the top corners rounded.
  ///
  /// The top-left and top-right corners are set to the same radius, [radius].
  const BorderRadius.top([double radius = 0])
      : this.only(
          topLeft: radius,
          topRight: radius,
        );

  /// Creates a [BorderRadius] object with only the bottom corners rounded.
  ///
  /// The bottom-left and bottom-right corners are set to the same radius, [radius].
  const BorderRadius.bottom([double radius = 0])
      : this.only(
          bottomLeft: radius,
          bottomRight: radius,
        );

  /// Creates a [BorderRadius] object with only the left corners rounded.
  ///
  /// The top-left and bottom-left corners are set to the same radius, [radius].
  const BorderRadius.left([double radius = 0])
      : this.only(
          topLeft: radius,
          bottomLeft: radius,
        );

  /// Creates a [BorderRadius] object with only the right corners rounded.
  ///
  /// The top-right and bottom-right corners are set to the same radius, [radius].
  const BorderRadius.right([double radius = 0])
      : this.only(
          topRight: radius,
          bottomRight: radius,
        );

  /// Creates a [BorderRadius] object with the specified radii for each corner.
  ///
  /// The radii are specified separately for each corner. A value of 0 means
  /// the corner is not rounded.
  const BorderRadius.only({
    this.topLeft = 0,
    this.topRight = 0,
    this.bottomLeft = 0,
    this.bottomRight = 0,
  });

  @override
  String get propName => 'border-radius';

  @override
  String get value => toString();

  /// Returns a string representation of this object.
  @override
  String toString() =>
      '${topLeft}px ${topRight}px ${bottomLeft}px ${bottomRight}px';
}
