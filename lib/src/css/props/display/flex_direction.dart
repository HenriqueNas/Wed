import '../../../../wed.dart';

/// Enum class for the different values of the CSS `flex-direction` property.
///
/// The `flex-direction` property is used to specify the direction of the flex
/// container's main axis.
///
/// The values of this enum are: `row`, `rowReverse`, `column`, `columnReverse`,
/// `initial`, and `inherit`.
enum FlexDirection implements CssBaseEnum {
  row,
  rowReverse,
  column,
  columnReverse,
  initial,
  inherit;

  @override
  String get value {
    switch (this) {
      case FlexDirection.rowReverse:
        return 'row-reverse';
      case FlexDirection.column:
        return 'column';
      case FlexDirection.columnReverse:
        return 'column-reverse';
      default:
        return name;
    }
  }
}
