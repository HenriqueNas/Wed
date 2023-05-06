import 'dart:html';

import '../../wed_core.dart';

/// The [GlobalProps] class defines properties that can be applied to any HTML element in a component.
/// This class is used as a type parameter to the [Component] class, and provides the ability to set
/// properties such as the ID, title, styles, and class name of an element.
class GlobalProps<T extends Element> {
  /// Creates a new [GlobalProps] instance with the specified properties.
  const GlobalProps({
    this.id,
    this.title,
    this.styles,
    this.className,
  });

  /// The ID of the element.
  final String? id;

  /// The title of the element.
  final String? title;

  /// The CSS styles to apply to the element.
  final CssStyle? styles;

  /// The class name of the element.
  final String? className;

  /// Sets the styles on the root element.
  void setStyles(T root) {
    _mapStyles(root);
  }

  /// Updates the properties of the root element with the values from this instance.
  void updateStyles(T root) {
    if (id != root.id) root.id = id ?? '';
    if (title != root.title) root.title = title ?? '';
    if (className != root.className) root.className = className ?? '';

    if (styles?.toStyle() != root.style) {
      _mapStyles(root);
    }
  }

  /// Maps the CSS styles to the root element.
  void _mapStyles(T root) {
    final propsMap = styles?.toMap();
    propsMap?.forEach((name, value) {
      if (value != null) root.style.setProperty(name, value);
    });
  }
}
