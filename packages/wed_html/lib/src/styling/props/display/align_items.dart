import 'package:wed_html/src/styling/exports.dart';

/// Enum class for the different values of the CSS `align-items` property.
///
/// The `align-items` property is used to align items along the cross-axis of a
/// flex container.
///
/// The values of this enum are: `normal`, `stretch`, `flexStart`, `flexEnd`,
/// `center`, `start`, `end`, `baseline`, `initial`, and `inherit`.
enum AlignItems implements CssEnumProps {
  /// The effect of this keyword is dependent of the layout mode we are in:
  ///
  /// - In absolutely-positioned layouts, the keyword behaves like start on
  /// replaced absolutely-positioned boxes, and as stretch on all
  /// other absolutely-positioned boxes.
  ///
  /// - In static position of absolutely-positioned layouts,
  /// the keyword behaves as stretch.
  ///
  /// - For flex items, the keyword behaves as stretch.
  ///
  /// - For grid items, this keyword leads to a behavior similar to the one of
  /// stretch, except for boxes with an aspect ratio or an
  /// intrinsic sizes where it behaves like start.
  ///
  /// - The property doesn't apply to block-level boxes, and to table cells.
  normal,

  /// Flex items are stretched such that the cross-size of the item's margin
  /// box is the same as the line while respecting width and height constraints.
  stretch,

  /// The cross-start margin edge of the items is placed on the cross-start line
  flexStart,

  /// The cross-end margin edge of the items is placed on the cross-end line
  flexEnd,

  /// The items are centered in the cross-axis
  center,

  /// The items are packed flush to each other toward the start edge
  /// of the alignment container in the appropriate axis.
  start,

  /// The items are packed flush to each other toward the end edge
  /// of the alignment container in the appropriate axis.
  end,

  /// The items are aligned such as their baselines align
  baseline,

  /// Sets this property to its default value
  initial,

  /// Inherits this property from its parent element
  inherit;

  @override
  String get value => switch (this) {
        AlignItems.flexStart => 'flex-start',
        AlignItems.flexEnd => 'flex-end',
        _ => name,
      };
}
