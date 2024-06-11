import 'package:wed_html/wed_html.dart';

/// Represents the CSS `position` property.
enum Position with CssPropMixin {
  /// The element is positioned according to the normal flow of the document.
  static,

  /// The element is positioned relative to its normal position.
  relative,

  /// The element is positioned relative to its nearest positioned ancestor.
  absolute,

  /// The element is positioned relative to the browser window.
  fixed,

  /// The element is positioned according to the normal flow of the document,
  /// and it sticks to its position when it reaches a certain scroll offset.
  sticky;

  @override
  String get propValue => name;

  @override
  String get propName => 'position';
}
