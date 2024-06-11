import 'package:wed_html/wed_html.dart';

/// Represents the CSS `font-weight` property.
enum FontWeight with CssPropMixin {
  /// Represents the 'normal' font weight.
  normal,

  /// Represents the 'bold' font weight.
  bold,

  /// Represents the 'bolder' font weight.
  bolder,

  /// Represents the 'lighter' font weight.
  lighter,

  /// Represents the '100' font weight.
  w100,

  /// Represents the '200' font weight.
  w200,

  /// Represents the '300' font weight.
  w300,

  /// Represents the '400' font weight.
  w400,

  /// Represents the '500' font weight.
  w500,

  /// Represents the '600' font weight.
  w600,

  /// Represents the '700' font weight.
  w700,

  /// Represents the '800' font weight.
  w800,

  /// Represents the '900' font weight.
  w900;

  @override
  String get propValue => name;

  @override
  String get propName => 'font-weight';
}
