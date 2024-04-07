import 'package:wed_html/src/styling/exports.dart';

/// {@template display_flex}
/// The [DisplayFlex] class is a collection of [CssStyle]s with the
/// [Display.flex] property.
/// {@endtemplate}
class DisplayFlex extends CssStyle {
  // static const flex = CssStyle(display: Display.flex);

  /// Returns a [CssStyle] with the [Display.flex] property.
  const DisplayFlex.flex({
    super.gap,
    super.flexDirection,
    super.alignItems,
    super.justifyContent,
  }) : super(display: Display.flex);

  /// Returns a [CssStyle] with props for centering the content:
  ///
  /// ```dart
  /// CssStyle(
  ///   display: Display.flex,
  ///   justifyContent: JustifyContent.center,
  ///   alignItems: AlignItems.center,
  /// );
  /// ```
  const DisplayFlex.center({
    super.flexDirection,
    super.gap,
  }) : super(
          display: Display.flex,
          justifyContent: JustifyContent.center,
          alignItems: AlignItems.center,
        );

  /// Returns a [CssStyle] with horizontal layout:
  ///
  /// ```dart
  /// CssStyle(
  ///   display: Display.flex,
  ///   flexDirection: FlexDirection.row,
  /// );
  /// ```
  const DisplayFlex.row({
    super.gap,
    super.alignItems,
    super.justifyContent,
  }) : super(
          display: Display.flex,
          flexDirection: FlexDirection.row,
        );

  /// Returns a [CssStyle] with vertical layout:
  /// properties:
  ///
  /// ```dart
  /// CssStyle(
  ///   display: Display.flex,
  ///   flexDirection: FlexDirection.column,
  /// );
  /// ```
  const DisplayFlex.column({
    super.gap,
    super.alignItems,
    super.justifyContent,
  }) : super(
          display: Display.flex,
          flexDirection: FlexDirection.column,
        );
}
