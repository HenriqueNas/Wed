import 'dart:html';

import '../../wed.dart';

class ComponentBaseProps {
  final CssBaseStyle? styles;
  final List<Component> children;

  const ComponentBaseProps({
    this.styles,
    this.children = const [],
  });

  void setUp(Element root) {
    _mapStyles(root);
    _mapChildren(root);
  }

  void _mapChildren(Element root) {
    for (var child in children) {
      root.append(child.root);
    }
  }

  void _mapStyles(Element root) {
    final propsMap = styles?.toMap();
    propsMap?.forEach((name, value) {
      root.style.setProperty(name, value);
    });
  }
}
