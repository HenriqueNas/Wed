import '../../../../wed_core.dart';

/// This code defines an enumeration TextAlign that implements the CssBaseEnum interface.
/// The CssBaseEnum interface defines a value property, which returns the name of the enum value as a string.
///
/// The TextAlign enumeration has six possible values: [left], [right], [center], [justify], [initial], and [inherit].
/// These values represent different text alignment options that can be used in CSS.
///
/// The value property of each enum value is implemented using the get keyword to provide a string representation of the enum value's name.
///
/// This enumeration can be used in CSS styling to specify text alignment options for HTML elements.
enum TextAlign implements CssBaseEnum {
  left,
  right,
  center,
  justify,
  initial,
  inherit;

  @override
  String get value => name;
}
