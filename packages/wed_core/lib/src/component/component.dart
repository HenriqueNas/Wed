import 'dart:html';

import '../../wed_core.dart';

/// {@template component}
/// The [Component] class is the core building block of the framework, representing a single HTML element.
///
/// This is an abstract class, so you can't create instances of it directly. Instead, you should create subclasses for each HTML tag that you want to use in your application.
///
/// When you create a subclass of [Component], you should specify two type parameters:
///
/// - [T]: The type of the props that the component will receive. This type should extend the [GlobalProps] class.
/// - [K]: The type of the HTML element that the component will render. This type should extend the [Element] class.
///
/// For example, if you want to create a `div` component that accepts a `className` prop, you could define a subclass like this:
///
/// ```dart
/// class Div extends Component<DivProps, DivElement> {
///   Div({String? className, List<Component>? children})
///     : super(
///         props: DivProps(className: className),
///         children: children,
///         super.tag = Tags.div,
///     );
///
///   @override
///   List<Component> build() {
///     return children [];
///   }
/// }
/// ```
///
/// The [Component] class has three instance variables:
///
/// - [root]: The root element for this component.
/// - [key]: The unique key for this component.
/// - [props]: The props for this component.
///
/// When you create a new instance of a `Component` subclass, you can pass in props and a key as named arguments.
///
/// You can override the `build` method in your `Component` subclass to return a list of child components to render.
///
/// You can also use the `setState` method to update the state of the component and trigger a re-render.
///
/// Finally, the `element` and `node` getters provide access to the underlying HTML element and node, respectively.
/// {@endtemplate}
abstract class Component<T extends GlobalProps, K extends Element> {
  /// Creates a new [Component] instance with the given tag, props and children.
  /// The [tag] argument is optional and defaults to `div`.
  /// The [props] argument is optional and defaults to `null`.
  /// {@macro component}
  Component({
    T? props,
    String? key,
    Tags tag = Tags.div,
    this.shrinkWrap = false,
  })  : _key = key,
        _props = props,
        _root = Element.tag(tag.name) as K {
    _render();
  }

  /// The root element for this component.
  final K _root;

  /// The unique key for this component.
  final String? _key;

  /// The props for this component, extends [GlobalProps].
  final T? _props;

  /// Whether or not the component should shrink its self and render just the children.
  final bool shrinkWrap;

  /// Returns a list of child components to render.
  List<Component> build();

  /// Updates the state of the component and triggers a re-render.
  void setState(void Function() callback) {
    callback();
    _render();
  }

  void _render() {
    _root.children = build().map((child) => child._root).toList();
    _props?.updateStyles(_root);
  }

  /// Returns the underlying HTML element.
  K get element => _root;

  /// Returns the underlying HTML node.
  Node get node => _root;
}
