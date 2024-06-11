import 'package:wed_html/wed_html.dart';

/// {@template justify_content}
/// Enum class for the different values of the CSS `justify-content` property.
///
/// The `justify-content` property is used to align the flex items along the
/// main axis of the current line of the flex container.
///
/// The values of this enum are: `flexStart`, `flexEnd`, `center`,
/// `spaceBetween`, `spaceAround`, `spaceEvenly`, `initial`, and `inherit`.
/// {@endtemplate}
enum JustifyContent with CssPropMixin {
  /// The flex items are packed starting from the main-start.
  flexStart,

  /// The flex items are packed starting from the main-end.
  flexEnd,

  /// The flex items are packed in the center along the main axis.
  center,

  /// The flex items are packed with equal space between them.
  spaceBetween,

  /// The flex items are packed with equal space before,
  /// between, and after them.
  spaceAround,

  /// The flex items are packed with equal space around them.
  spaceEvenly,

  /// Sets this property to its default value.
  initial,

  /// Inherits this property from its parent element.
  inherit;

  @override
  String get propValue => switch (this) {
        JustifyContent.flexStart => 'flex-start',
        JustifyContent.flexEnd => 'flex-end',
        JustifyContent.spaceBetween => 'space-between',
        JustifyContent.spaceAround => 'space-around',
        JustifyContent.spaceEvenly => 'space-evenly',
        _ => name,
      };

  @override
  String get propName => 'justify-content';
}
