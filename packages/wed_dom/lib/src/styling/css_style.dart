// ignore_for_file: public_member_api_docs

import 'dart:html';

import 'package:wed_core/wed_core.dart';
import 'package:wed_dom/src/styling/exports.dart';

/// {@template css_style}
/// The [CssStyle] class, extends [Style] from `wed_core`,
/// and is a base class that defines a set of common CSS properties.
///
/// It's used as a base class for the more specific `CssXyzProps` classes,
/// such as `CssDivProps` and `CssButtonProps`.
/// {@endtemplate}
class CssStyle extends Style {
  /// Creates an instance of [CssStyle]. <br />
  /// {@macro css_style}
  const CssStyle({
    this.border,
    this.boxShadow,
    this.cursor,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderStyle,
    this.borderWidth,
    this.color,
    this.display,
    this.fontFamily,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.height,
    this.width,
    this.margin,
    this.padding,
    this.textAlign,
    this.textDecoration,
    this.textTransform,
    this.alignItems,
    this.justifyContent,
    this.flexDirection,
    this.boxSizing,
  });

  const CssStyle.fromString() : this();

  final Color? backgroundColor;
  final Color? borderColor;
  final String? borderStyle;
  final String? borderWidth;
  final Color? color;
  final String? fontFamily;
  final String? fontSize;
  final String? fontStyle;
  final String? fontWeight;
  final String? textDecoration;
  final String? textTransform;

  /// The height value of the element. <br />
  /// {@macro units}
  final Units? height;

  /// The width value of the element. <br />
  /// {@macro units}
  final Units? width;

  /// {@macro border_radius}
  final BorderRadius? borderRadius;

  /// {@macro display}
  final Display? display;

  /// {@macro align_items}
  final AlignItems? alignItems;

  /// {@macro justify_content}
  final JustifyContent? justifyContent;

  /// {@macro flex_direction}
  final FlexDirection? flexDirection;

  /// {@macro margin}
  final Margin? margin;

  /// {@macro padding}
  final Padding? padding;

  /// {@macro text_align}
  final TextAlign? textAlign;

  /// {@macro cursor}
  final Cursor? cursor;
  final String? border;
  final String? boxShadow;
  final String? boxSizing;

  /// Converts the [CssStyle] to a `Map<String, dynamic>` of CSS properties.
  Map<String, String?> toMap() {
    return {
      'background-color': backgroundColor?.toRGBString(),
      'border-color': borderColor?.toRGBString(),
      'border-radius': borderRadius?.value,
      'border-style': borderStyle,
      'border-width': borderWidth,
      'color': color?.toRGBString(),
      'display': display?.value,
      'font-family': fontFamily,
      'font-size': fontSize,
      'font-style': fontStyle,
      'font-weight': fontWeight,
      'height': height.toString(),
      'margin': margin.toString(),
      'padding': padding.toString(),
      'text-align': textAlign?.value,
      'text-decoration': textDecoration,
      'text-transform': textTransform,
      'width': width.toString(),
      'align-items': alignItems?.value,
      'justify-content': justifyContent?.value,
      'flex-direction': flexDirection?.value,
      'cursor': cursor?.value,
      'border': border,
      'box-shadow': boxShadow,
      'box-sizing': boxSizing,
    };
  }

  /// Converts the [CssStyle] to a [CssStyleDeclaration] object from `dart_html`
  CssStyleDeclaration toStyle() {
    final style = CssStyleDeclaration();

    toMap().forEach((key, value) {
      if (value != null) {
        style.setProperty(key, value);
      }
    });

    return style;
  }

  /// Merges the [CssStyle] with another [CssStyle].
  ///
  /// New values will override the old values.
  CssStyle merge(CssStyle other) {
    return copyWith(
      backgroundColor: other.backgroundColor,
      borderColor: other.borderColor,
      borderRadius: other.borderRadius,
      borderStyle: other.borderStyle,
      borderWidth: other.borderWidth,
      color: other.color,
      display: other.display,
      fontFamily: other.fontFamily,
      fontSize: other.fontSize,
      fontStyle: other.fontStyle,
      fontWeight: other.fontWeight,
      height: other.height,
      margin: other.margin,
      padding: other.padding,
      textAlign: other.textAlign,
      textDecoration: other.textDecoration,
      textTransform: other.textTransform,
      width: other.width,
      alignItems: other.alignItems,
      justifyContent: other.justifyContent,
      flexDirection: other.flexDirection,
      cursor: other.cursor,
      border: other.border,
      boxShadow: other.boxShadow,
      boxSizing: other.boxSizing,
    );
  }

  /// Creates a copy of the [CssStyle] with the specified properties
  CssStyle copyWith({
    Color? backgroundColor,
    Color? borderColor,
    BorderRadius? borderRadius,
    String? borderStyle,
    String? borderWidth,
    Color? color,
    Display? display,
    AlignItems? alignItems,
    JustifyContent? justifyContent,
    FlexDirection? flexDirection,
    String? fontFamily,
    String? fontSize,
    String? fontStyle,
    String? fontWeight,
    Units? height,
    Margin? margin,
    String? marginBottom,
    String? marginLeft,
    String? marginRight,
    String? marginTop,
    Padding? padding,
    String? paddingBottom,
    String? paddingLeft,
    String? paddingRight,
    String? paddingTop,
    TextAlign? textAlign,
    String? textDecoration,
    String? textTransform,
    Units? width,
    Cursor? cursor,
    String? border,
    String? boxShadow,
    String? boxSizing,
  }) {
    return CssStyle(
      cursor: cursor ?? this.cursor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderRadius: borderRadius ?? this.borderRadius,
      borderStyle: borderStyle ?? this.borderStyle,
      borderWidth: borderWidth ?? this.borderWidth,
      color: color ?? this.color,
      display: display ?? this.display,
      fontFamily: fontFamily ?? this.fontFamily,
      fontSize: fontSize ?? this.fontSize,
      fontStyle: fontStyle ?? this.fontStyle,
      fontWeight: fontWeight ?? this.fontWeight,
      height: height ?? this.height,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      textAlign: textAlign ?? this.textAlign,
      textDecoration: textDecoration ?? this.textDecoration,
      textTransform: textTransform ?? this.textTransform,
      width: width ?? this.width,
      alignItems: alignItems ?? this.alignItems,
      justifyContent: justifyContent ?? this.justifyContent,
      flexDirection: flexDirection ?? this.flexDirection,
      border: border ?? this.border,
      boxShadow: boxShadow ?? this.boxShadow,
      boxSizing: boxSizing ?? this.boxSizing,
    );
  }

  @override
  String toString() {
    return toMap().toString();
  }
}
