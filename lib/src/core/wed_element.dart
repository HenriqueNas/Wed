import 'dart:html';

import '../../wed.dart';

/// The [WedElement] class is the core building block of the framework, representing a single HTML element.

/// A wrapper for [Element] that allows for the creation of custom widgets.
abstract class WedElement<P extends ElementProps, E extends Element> {
  /// Creates a new [WedElement] instance with the given tag, props and children.
  /// The [tag] argument is optional and defaults to `div`.
  const WedElement({
    this.tag = Tags.div,
    this.props,
    this.children = const [],
  });

  /// The tag of the element.
  final Tags tag;

  /// The props for this component, extends [ElementProps].
  final P? props;

  /// Returns a list of child components to render.
  final List<Widget> children;

  /// Returns the root [Element] for this component.
  E get htmlElement => Element.tag(tag.name) as E;
}
