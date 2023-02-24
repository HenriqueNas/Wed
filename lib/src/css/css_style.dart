import 'dart:html';

import '../../wed.dart';

/// The [CssStyle] class is a base class that defines a set of common CSS properties.
///
/// It's used as a base class for the more specific CssXyzProps classes, such as CssDivProps and CssButtonProps.
///
class CssStyle {
  final String? backgroundColor;
  final String? borderColor;
  final String? borderStyle;
  final String? borderWidth;
  final String? color;
  final String? fontFamily;
  final String? fontSize;
  final String? fontStyle;
  final String? fontWeight;
  final String? height;
  final String? textDecoration;
  final String? textTransform;
  final String? width;
  final BorderRadius? borderRadius;
  final Display? display;
  final AlignItems? alignItems;
  final JustifyContent? justifyContent;
  final FlexDirection? flexDirection;
  final Margin? margin;
  final Padding? padding;
  final TextAlign? textAlign;
  final Cursor? cursor;

  const CssStyle({
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
    this.margin,
    this.padding,
    this.textAlign,
    this.textDecoration,
    this.textTransform,
    this.width,
    this.alignItems,
    this.justifyContent,
    this.flexDirection,
  });

  Map<String, String?> toMap() {
    return {
      'background-color': backgroundColor,
      'border-color': borderColor,
      'border-radius': borderRadius?.value,
      'border-style': borderStyle,
      'border-width': borderWidth,
      'color': color,
      'display': display?.value,
      'font-family': fontFamily,
      'font-size': fontSize,
      'font-style': fontStyle,
      'font-weight': fontWeight,
      'height': height,
      'margin': margin?.value,
      'padding': padding?.value,
      'text-align': textAlign?.value,
      'text-decoration': textDecoration,
      'text-transform': textTransform,
      'width': width,
      'align-items': alignItems?.value,
      'justify-content': justifyContent?.value,
      'flex-direction': flexDirection?.value,
      'cursor': cursor?.value,
    };
  }

  CssStyleDeclaration toStyle() {
    final style = CssStyleDeclaration();

    toMap().forEach((key, value) {
      if (value != null) {
        style.setProperty(key, value);
      }
    });

    return style;
  }

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
    );
  }

  CssStyle copyWith({
    String? backgroundColor,
    String? borderColor,
    BorderRadius? borderRadius,
    String? borderStyle,
    String? borderWidth,
    String? color,
    Display? display,
    AlignItems? alignItems,
    JustifyContent? justifyContent,
    FlexDirection? flexDirection,
    String? fontFamily,
    String? fontSize,
    String? fontStyle,
    String? fontWeight,
    String? height,
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
    String? width,
    Cursor? cursor,
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
    );
  }
}
