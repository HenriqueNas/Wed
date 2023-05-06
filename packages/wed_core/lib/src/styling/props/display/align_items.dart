import '../../../../wed_core.dart';

/// Enum class for the different values of the CSS `align-items` property.
///
/// The `align-items` property is used to align items along the cross-axis of a
/// flex container.
///
/// The values of this enum are: `normal`, `stretch`, `flexStart`, `flexEnd`,
/// `center`, `start`, `end`, `baseline`, `initial`, and `inherit`.
enum AlignItems implements CssBaseEnum {
  normal,
  stretch,
  flexStart,
  flexEnd,
  center,
  start,
  end,
  baseline,
  initial,
  inherit;

  @override
  String get value {
    switch (this) {
      case AlignItems.flexStart:
        return 'flex-start';
      case AlignItems.flexEnd:
        return 'flex-end';
      default:
        return name;
    }
  }
}
