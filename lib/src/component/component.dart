import 'dart:html';

import 'package:wed/src/component/component_base_props.dart';

/// The Component class is the core building block of the framework, and represents a single HTML element.
/// Each Component instance can have its own set of properties and child components.
///
/// The Component class is abstract, so you can't create instances of it directly.
/// Instead, you should create subclasses for each HTML tag that you want to use in your application.
/// In the example you provided, you would need a Div subclass that extends Component.
/// The base class for all components in the framework.
abstract class Component<T extends ComponentBaseProps> {
  late final Element _root;

  /// The HTML tag name for this component.
  final String type;

  /// The unique key for this component.
  final String? key;

  /// A reference to this component.
  final String? ref;

  /// The props for this component.
  final T? props;

  /// Creates a new [Component] instance with the given tag name.
  Component({
    required this.type,
    this.key,
    this.ref,
    this.props,
  }) {
    _root = Element.tag(type);
    props?.setUp(_root);
  }

  /// The root element for this component.
  Element get root => _root;
}
