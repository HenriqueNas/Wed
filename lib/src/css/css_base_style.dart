import 'dart:html';

/// The [CssBaseStyle] class is a base class that defines a set of common CSS properties.
///
/// It's used as a base class for the more specific CssXyzProps classes, such as CssDivProps and CssButtonProps.
///
class CssBaseStyle {
  final String? backgroundColor;
  final String? borderColor;
  final String? borderRadius;
  final String? borderStyle;
  final String? borderWidth;
  final String? color;
  final String? display;
  final String? fontFamily;
  final String? fontSize;
  final String? fontStyle;
  final String? fontWeight;
  final String? height;
  final String? margin;
  final String? marginBottom;
  final String? marginLeft;
  final String? marginRight;
  final String? marginTop;
  final String? padding;
  final String? paddingBottom;
  final String? paddingLeft;
  final String? paddingRight;
  final String? paddingTop;
  final String? textAlign;
  final String? textDecoration;
  final String? textTransform;
  final String? width;
  final String? alignItems;
  final String? justifyContent;

  const CssBaseStyle({
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
    this.marginBottom,
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.padding,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.textAlign,
    this.textDecoration,
    this.textTransform,
    this.width,
    this.alignItems,
    this.justifyContent,
  });

  Map<String, String?> toMap() {
    return {
      'background-color': backgroundColor,
      'border-color': borderColor,
      'border-radius': borderRadius,
      'border-style': borderStyle,
      'border-width': borderWidth,
      'color': color,
      'display': display,
      'font-family': fontFamily,
      'font-size': fontSize,
      'font-style': fontStyle,
      'font-weight': fontWeight,
      'height': height,
      'margin': margin,
      'margin-bottom': marginBottom,
      'margin-left': marginLeft,
      'margin-right': marginRight,
      'margin-top': marginTop,
      'padding': padding,
      'padding-bottom': paddingBottom,
      'padding-left': paddingLeft,
      'padding-right': paddingRight,
      'padding-top': paddingTop,
      'text-align': textAlign,
      'text-decoration': textDecoration,
      'text-transform': textTransform,
      'width': width,
      'align-items': alignItems,
      'justify-content': justifyContent,
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

  CssBaseStyle copyWith({
    String? backgroundColor,
    String? borderColor,
    String? borderRadius,
    String? borderStyle,
    String? borderWidth,
    String? color,
    String? display,
    String? fontFamily,
    String? fontSize,
    String? fontStyle,
    String? fontWeight,
    String? height,
    String? margin,
    String? marginBottom,
    String? marginLeft,
    String? marginRight,
    String? marginTop,
    String? padding,
    String? paddingBottom,
    String? paddingLeft,
    String? paddingRight,
    String? paddingTop,
    String? textAlign,
    String? textDecoration,
    String? textTransform,
    String? width,
    String? alignItems,
    String? justifyContent,
  }) {
    return CssBaseStyle(
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
      marginBottom: marginBottom ?? this.marginBottom,
      marginLeft: marginLeft ?? this.marginLeft,
      marginRight: marginRight ?? this.marginRight,
      marginTop: marginTop ?? this.marginTop,
      padding: padding ?? this.padding,
      paddingBottom: paddingBottom ?? this.paddingBottom,
      paddingLeft: paddingLeft ?? this.paddingLeft,
      paddingRight: paddingRight ?? this.paddingRight,
      paddingTop: paddingTop ?? this.paddingTop,
      textAlign: textAlign ?? this.textAlign,
      textDecoration: textDecoration ?? this.textDecoration,
      textTransform: textTransform ?? this.textTransform,
      width: width ?? this.width,
      alignItems: alignItems ?? this.alignItems,
      justifyContent: justifyContent ?? this.justifyContent,
    );
  }
}
