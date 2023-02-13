import 'dart:html';

import '../wed.dart';

/// The renderApp function is the entry point for the framework.
///
/// It takes a Component instance and an Element instance as parameters.
/// The Component instance is the root component of the application.
/// The Element instance is the HTML element that will contain the root component.
///
/// Use like:
///
/// ```dart
/// import 'package:wed/wed.dart';
/// import 'dart:html';
///
/// final app = querySelector('#app') as Element;
///
/// main () {
///   final component = Div(id: 'my-app');
///
///   renderApp(component, app);
/// }
/// ```
void renderApp(Component component, Element element) {
  element.append(component.root);
}

/// The Component class is the core building block of the framework, and represents a single HTML element.
/// Each Component instance can have its own set of properties and child components.
///
/// The Component class is abstract, so you can't create instances of it directly.
/// Instead, you should create subclasses for each HTML tag that you want to use in your application.
/// In the example you provided, you would need a Div subclass that extends Component.
abstract class Component {
  late final Element _root;
  final CssBaseProps? styles;
  final List<Component>? children;

  Element get root => _root;

  Component({
    required String tag,
    this.children = const [],
    this.styles,
  }) {
    _root = Element.tag(tag);
    _mapChildren();
    _mapStyles();
  }

  void _mapChildren() {
    children?.forEach((child) => _root.append(child.root));
  }

  void _mapStyles() {
    final propsMap = styles?.toMap();
    propsMap?.forEach((name, value) {
      _root.style.setProperty(name, value);
    });
  }
}
