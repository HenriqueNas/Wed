import 'package:wed_html/wed_html.dart';

/// Represents the CSS `border-style` property.
enum BorderStyle with CssPropMixin {
  /// No border.
  none,

  /// A solid line.
  solid,

  /// A dotted line.
  dotted,

  /// A dashed line.
  dashed,

  /// A double line.
  double,

  /// A grooved border.
  groove,

  /// A ridge border.
  ridge,

  /// An inset border.
  inset,

  /// An outset border.
  outset;

  @override
  String get propValue => name;

  @override
  String get propName => 'border-style';
}
