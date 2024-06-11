import 'package:wed_html/wed_html.dart';

/// {@template flex_direction}
/// Enum class for the different values of the CSS `flex-direction` property.
///
/// The `flex-direction` property is used to specify the direction of the flex
/// container's main axis.
///
/// The values of this enum are: `row`, `rowReverse`, `column`, `columnReverse`,
/// `initial`, and `inherit`.
/// {@endtemplate}
enum FlexDirection with CssPropMixin {
  /// The flex container's main-axis is the same as the block-axis.
  row,

  /// Same as row, except the main-start and main-end points are swapped.
  rowReverse,

  /// The flex container's main-axis is the same as the inline-axis.
  column,

  /// Same as column, except the main-start and main-end are swapped.
  columnReverse,

  /// Sets this property to its default value.
  initial,

  /// Inherits this property from its parent element.
  inherit;

  @override
  String get propValue => switch (this) {
        FlexDirection.rowReverse => 'row-reverse',
        FlexDirection.column => 'column',
        FlexDirection.columnReverse => 'column-reverse',
        _ => name,
      };

  @override
  String get propName => 'flex-direction';
}
