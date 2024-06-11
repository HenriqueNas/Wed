// ignore_for_file: public_member_api_docs

import 'dart:html';

import 'package:wed_core/wed_core.dart';
import 'package:wed_html/src/styling/exports.dart';

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
    this.display,
    this.position,
    this.top,
    this.right,
    this.bottom,
    this.left,
    this.width,
    this.height,
    this.minWidth,
    this.minHeight,
    this.maxWidth,
    this.maxHeight,
    this.margin,
    this.padding,
    this.border,
    this.borderRadius,
    this.borderWidth,
    this.color,
    this.backgroundColor,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.textAlign,
    this.textDecoration,
    this.textTransform,
    this.lineHeight,
    this.letterSpacing,
    this.cursor,
    this.overflow,
    this.opacity,
    this.zIndex,
    this.flex,
    this.flexDirection,
    this.alignItems,
    this.justifyContent,
    this.flexGrow,
    this.flexShrink,
    this.alignSelf,
    this.order,
    this.gap,
    this.boxSizing,
    this.flexWrap,
  });

  // Layout
  final Display? display;
  final Position? position;
  final Units? top;
  final Units? right;
  final Units? bottom;
  final Units? left;
  final Units? width;
  final Units? height;
  final Units? minWidth;
  final Units? minHeight;
  final Units? maxWidth;
  final Units? maxHeight;
  final Margin? margin;
  final Padding? padding;
  final Units? gap;
  final String? boxSizing;

  // Border
  final Border? border;
  final BorderRadius? borderRadius;
  final BorderWidth? borderWidth;
  // final BoxShadow? boxShadow;

  // Typography
  final Color? color;
  final String? fontFamily;
  final Units? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final TextTransform? textTransform;
  final String? lineHeight;
  final String? letterSpacing;

  // Other
  final int? zIndex;
  final Cursor? cursor;
  final double? opacity;
  final Overflow? overflow;
  final Color? backgroundColor;

  // Flexbox
  final String? flex;
  final FlexDirection? flexDirection;
  final AlignItems? alignItems;
  final JustifyContent? justifyContent;
  final int? flexGrow;
  final int? flexShrink;
  final AlignSelf? alignSelf;
  final int? order;
  final String? flexWrap;

  Map<String, String?> toMap({bool includeNullProps = false}) {
    final map = <String, String?>{};

    // Layout
    if (top != null || includeNullProps) map['top'] = top?.toString();
    if (right != null || includeNullProps) map['right'] = right?.toString();
    if (bottom != null || includeNullProps) map['bottom'] = bottom?.toString();
    if (left != null || includeNullProps) map['left'] = left?.toString();
    if (width != null || includeNullProps) map['width'] = width?.toString();
    if (height != null || includeNullProps) map['height'] = height?.toString();
    if (gap != null || includeNullProps) map['gap'] = gap?.toString();
    if (margin != null || includeNullProps) map['margin'] = margin?.toString();
    if (boxSizing != null || includeNullProps) map['box-sizing'] = boxSizing;
    if (display != null || includeNullProps) {
      map['display'] = display?.propValue;
    }
    if (position != null || includeNullProps) {
      map['position'] = position?.propValue;
    }
    if (minWidth != null || includeNullProps) {
      map['min-width'] = minWidth?.toString();
    }
    if (minHeight != null || includeNullProps) {
      map['min-height'] = minHeight?.toString();
    }
    if (maxWidth != null || includeNullProps) {
      map['max-width'] = maxWidth?.toString();
    }
    if (maxHeight != null || includeNullProps) {
      map['max-height'] = maxHeight?.toString();
    }
    if (padding != null || includeNullProps) {
      map['padding'] = padding?.toString();
    }

    // Border
    if (border != null || includeNullProps) map['border'] = border?.toString();
    if (borderWidth != null || includeNullProps) {
      map['border-width'] = borderWidth?.toString();
    }
    if (borderRadius != null || includeNullProps) {
      map['border-radius'] = borderRadius?.toString();
    }

    // Typography
    if (color != null || includeNullProps) map['color'] = color?.toRGBString();
    if (backgroundColor != null || includeNullProps) {
      map['background-color'] = backgroundColor?.toRGBString();
    }
    if (fontFamily != null || includeNullProps) {
      map['font-family'] = fontFamily;
    }
    if (fontSize != null || includeNullProps) {
      map['font-size'] = fontSize?.toString();
    }
    if (fontWeight != null || includeNullProps) {
      map['font-weight'] = fontWeight?.propValue;
    }
    if (fontStyle != null || includeNullProps) {
      map['font-style'] = fontStyle?.propValue;
    }
    if (textAlign != null || includeNullProps) {
      map['text-align'] = textAlign?.propValue;
    }
    if (textDecoration != null || includeNullProps) {
      map['text-decoration'] = textDecoration?.propValue;
    }
    if (textTransform != null || includeNullProps) {
      map['text-transform'] = textTransform?.propValue;
    }
    if (lineHeight != null || includeNullProps) {
      map['line-height'] = lineHeight;
    }
    if (letterSpacing != null || includeNullProps) {
      map['letter-spacing'] = letterSpacing;
    }

    // Other
    if (cursor != null || includeNullProps) map['cursor'] = cursor?.propValue;
    if (zIndex != null || includeNullProps) map['z-index'] = zIndex.toString();
    if (overflow != null || includeNullProps) {
      map['overflow'] = overflow?.propValue;
    }
    if (opacity != null || includeNullProps) {
      map['opacity'] = opacity.toString();
    }

    // FlexBox
    if (flex != null || includeNullProps) map['flex'] = flex;
    if (flexWrap != null || includeNullProps) map['flex-wrap'] = flexWrap;
    if (flexDirection != null || includeNullProps) {
      map['flex-direction'] = flexDirection?.propValue;
    }
    if (alignItems != null || includeNullProps) {
      map['align-items'] = alignItems?.propValue;
    }
    if (justifyContent != null || includeNullProps) {
      map['justify-content'] = justifyContent?.propValue;
    }
    if (flexGrow != null || includeNullProps) {
      map['flex-grow'] = flexGrow.toString();
    }
    if (flexShrink != null || includeNullProps) {
      map['flex-shrink'] = flexShrink.toString();
    }
    if (alignSelf != null || includeNullProps) {
      map['align-self'] = alignSelf?.propValue;
    }
    if (order != null || includeNullProps) map['order'] = order.toString();

    return map;
  }

  /// Converts the [CssStyle] to a [CssStyleDeclaration] object from `dart_html`
  CssStyleDeclaration toStyle() {
    final style = CssStyleDeclaration();

    toMap().forEach(style.setProperty);

    return style;
  }

  CssStyle merge(CssStyle other) {
    return copyWith(
      display: other.display ?? display,
      position: other.position ?? position,
      top: other.top ?? top,
      right: other.right ?? right,
      bottom: other.bottom ?? bottom,
      left: other.left ?? left,
      width: other.width ?? width,
      height: other.height ?? height,
      minWidth: other.minWidth ?? minWidth,
      minHeight: other.minHeight ?? minHeight,
      maxWidth: other.maxWidth ?? maxWidth,
      maxHeight: other.maxHeight ?? maxHeight,
      margin: other.margin ?? margin,
      padding: other.padding ?? padding,
      border: other.border ?? border,
      borderRadius: other.borderRadius ?? borderRadius,
      borderWidth: other.borderWidth ?? borderWidth,
      // boxShadow: other.boxShadow ?? boxShadow,
      color: other.color ?? color,
      backgroundColor: other.backgroundColor ?? backgroundColor,
      fontFamily: other.fontFamily ?? fontFamily,
      fontSize: other.fontSize ?? fontSize,
      fontWeight: other.fontWeight ?? fontWeight,
      fontStyle: other.fontStyle ?? fontStyle,
      textAlign: other.textAlign ?? textAlign,
      textDecoration: other.textDecoration ?? textDecoration,
      textTransform: other.textTransform ?? textTransform,
      lineHeight: other.lineHeight ?? lineHeight,
      letterSpacing: other.letterSpacing ?? letterSpacing,
      cursor: other.cursor ?? cursor,
      overflow: other.overflow ?? overflow,
      opacity: other.opacity ?? opacity,
      zIndex: other.zIndex ?? zIndex,
      flex: other.flex ?? flex,
      flexDirection: other.flexDirection ?? flexDirection,
      alignItems: other.alignItems ?? alignItems,
      justifyContent: other.justifyContent ?? justifyContent,
      flexWrap: other.flexWrap ?? flexWrap,
      flexGrow: other.flexGrow ?? flexGrow,
      flexShrink: other.flexShrink ?? flexShrink,
      alignSelf: other.alignSelf ?? alignSelf,
      order: other.order ?? order,
      gap: other.gap ?? gap,
      boxSizing: other.boxSizing ?? boxSizing,
    );
  }

  CssStyle copyWith({
    Display? display,
    Position? position,
    Units? top,
    Units? right,
    Units? bottom,
    Units? left,
    Units? width,
    Units? height,
    Units? minWidth,
    Units? minHeight,
    Units? maxWidth,
    Units? maxHeight,
    Margin? margin,
    Padding? padding,
    Border? border,
    BorderWidth? borderWidth,
    BorderRadius? borderRadius,
    // BoxShadow? boxShadow,
    Color? color,
    Color? backgroundColor,
    String? fontFamily,
    Units? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
    TextTransform? textTransform,
    String? lineHeight,
    String? letterSpacing,
    Cursor? cursor,
    Overflow? overflow,
    double? opacity,
    int? zIndex,
    String? flex,
    FlexDirection? flexDirection,
    AlignItems? alignItems,
    JustifyContent? justifyContent,
    String? flexWrap,
    int? flexGrow,
    int? flexShrink,
    AlignSelf? alignSelf,
    int? order,
    Units? gap,
    String? boxSizing,
  }) {
    return CssStyle(
      display: display ?? this.display,
      position: position ?? this.position,
      top: top ?? this.top,
      right: right ?? this.right,
      bottom: bottom ?? this.bottom,
      left: left ?? this.left,
      width: width ?? this.width,
      height: height ?? this.height,
      minWidth: minWidth ?? this.minWidth,
      minHeight: minHeight ?? this.minHeight,
      maxWidth: maxWidth ?? this.maxWidth,
      maxHeight: maxHeight ?? this.maxHeight,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      borderWidth: borderWidth ?? this.borderWidth,
      // boxShadow: boxShadow ?? this.boxShadow,
      color: color ?? this.color,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      fontFamily: fontFamily ?? this.fontFamily,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      fontStyle: fontStyle ?? this.fontStyle,
      textAlign: textAlign ?? this.textAlign,
      textDecoration: textDecoration ?? this.textDecoration,
      textTransform: textTransform ?? this.textTransform,
      lineHeight: lineHeight ?? this.lineHeight,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      cursor: cursor ?? this.cursor,
      overflow: overflow ?? this.overflow,
      opacity: opacity ?? this.opacity,
      zIndex: zIndex ?? this.zIndex,
      flex: flex ?? this.flex,
      flexDirection: flexDirection ?? this.flexDirection,
      alignItems: alignItems ?? this.alignItems,
      justifyContent: justifyContent ?? this.justifyContent,
      flexWrap: flexWrap ?? this.flexWrap,
      flexGrow: flexGrow ?? this.flexGrow,
      flexShrink: flexShrink ?? this.flexShrink,
      alignSelf: alignSelf ?? this.alignSelf,
      order: order ?? this.order,
      gap: gap ?? this.gap,
      boxSizing: boxSizing ?? this.boxSizing,
    );
  }

  @override
  String toString() => toMap().toString();
}
