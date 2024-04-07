import 'package:wed_html/src/styling/props/css_enum_props.dart';

/// This code defines an enumeration TextAlign that implements
/// the CssBaseEnum interface. <br />
/// The CssBaseEnum interface defines a value property, which returns
/// the name of the enum value as a string.
///
/// The TextAlign enumeration has six possible values:
///   [left], [right], [center], [justify], [initial], and [inherit].
/// These values represent different text alignment
///  options that can be used in CSS.
///
/// The value property of each enum value is implemented using the get
/// keyword to provide a string representation of the enum value's name.
///
/// This enumeration can be used in CSS styling to specify
///  text alignment options for html elements.
enum TextAlign implements CssEnumProps {
  /// Represents the CSS `text-align: left` property.
  left,

  /// Represents the CSS `text-align: right` property.
  right,

  /// Represents the CSS `text-align: center` property.
  center,

  /// Represents the CSS `text-align: justify` property.
  justify,

  /// Represents the CSS `text-align: initial` property.
  initial,

  /// Represents the CSS `text-align: inherit` property.
  inherit;

  @override
  String get value => name;
}
