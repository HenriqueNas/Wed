import 'package:wed_core/wed_core.dart';
import 'package:wed_dom/wed_dom.dart';

/// {@template html_component_props}
/// The [HtmlGlobalProps] class is a base class that defines a set of common
/// properties for HTML components.
///
/// It's used as a base class for the more specific `HtmlXyzProps` classes,
/// such as `HtmlDivProps` and `HtmlButtonProps`.
/// {@endtemplate}
class HtmlGlobalProps extends Props<CssStyle> {
  /// Creates an instance of [HtmlGlobalProps]. <br />
  /// {@macro html_component_props}
  const HtmlGlobalProps({
    super.key,
    super.style,
    this.className,
    this.attributes,
  });

  /// List of classes for this component.
  final List<String>? className;

  /// List of attributes for this component.
  final Map<String, String>? attributes;

  /// Creates a copy of [HtmlGlobalProps] with specified
  /// attributes overridden.
  HtmlGlobalProps copyWith({
    String? key,
    CssStyle? style,
    List<String>? className,
    Map<String, String>? attributes,
  }) {
    return HtmlGlobalProps(
      key: key ?? this.key,
      style: style ?? this.style,
      className: className ?? this.className,
      attributes: attributes ?? this.attributes,
    );
  }

  @override
  String toString() {
    return 'HtmlGlobalProps{'
        'key: $key, style: $style, '
        'className: $className, attributes: $attributes,}';
  }
}
