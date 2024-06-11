import 'package:wed_html/wed_html.dart';

/// Enum class for the different values of the CSS `align-content` property.
/// The `align-content` property is used to align the flex lines in the flex
/// container.
enum AlignSelf with CssPropMixin {
  /// The cross-start margin edge of the items is placed on the cross-start line
  auto,

  /// The cross-end margin edge of the items is placed on the cross-end line
  flexStart,

  /// The cross-end margin edge of the items is placed on the cross-end line
  flexEnd,

  /// The items are centered in the cross-axis
  center,

  /// The items are packed flush to each other toward the start edge
  baseline,

  /// The items are packed flush to each other toward the end edge
  stretch,

  /// Sets this property to its default value
  initial,

  /// Inherits this property from its parent element
  inherit;

  @override
  String get propValue => switch (this) {
        AlignSelf.flexStart => 'flex-start',
        AlignSelf.flexEnd => 'flex-end',
        _ => name,
      };

  @override
  String get propName => 'align-self';
}
