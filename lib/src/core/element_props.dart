import 'dart:html';

import '../../wed.dart';

/// The [ElementProps] class defines properties that can be applied to any HTML element in a component.
/// This class is used as a type parameter to the [WedElement] class, and provides the ability to set
/// properties such as the ID, title, styles, and class name of an element.
class ElementProps<E extends Element> {
  /// Creates a new [ElementProps] instance with the specified properties.
  const ElementProps({
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
  void setStyles(E root) {
    _mapStyles(root);
  }

  /// Updates the properties of the root element with the values from this instance.
  void updateStyles(E root) {
    if (id != root.id) root.id = id ?? '';
    if (title != root.title) root.title = title ?? '';
    if (className != root.className) root.className = className ?? '';

    if (styles?.toStyle() != root.style) {
      _mapStyles(root);
    }
  }

  /// Maps the CSS styles to the root element.
  void _mapStyles(E root) {
    final propsMap = styles?.toMap();
    propsMap?.forEach((name, value) {
      if (value != null) root.style.setProperty(name, value);
    });
  }

  @override
  String toString() {
    return 'GlobalProps(id: $id, title: $title, styles: $styles, className: $className)';
  }
}
