import 'dart:html';

import '../../wed.dart';
import 'widget.dart';

/// The [WedElement] class is the core building block of the framework, representing a single HTML element.
abstract class WedElement<T extends GlobalProps, K extends Element>
    extends Widget<Element> {
  /// Creates a new [WedElement] instance with the given tag, props and children.
  /// The [tag] argument is optional and defaults to `div`.
  WedElement({
    T? props,
    Tags tag = Tags.div,
    List<Widget> children = const [],
  })  : _props = props,
        _children = children,
        _element = Element.tag(tag.name) as K {
    updateChildren();
  }

  final T? _props;

  /// The props for this component, extends [GlobalProps].
  T? get props => _props;

  final List<Widget> _children;

  /// Returns a list of child components to render.
  List<Widget> get children => _children;

  /// Renders the component.
  /// This method is called automatically when the component is created and when the state is updated.
  void updateChildren() {
    print('update starting...');
    print('props: ${_props.toString()}');
    final elementList = <Element>[];

    for (final element in children) {
      if (element is WedElement) {
        element.props?.updateStyles(element.root);
        elementList.add(element.root);
      } else if (element is Component) {
        element.build().updateChildren();
      }
    }

    _element.children.clear();
    _element.children.addAll(elementList);
  }

  final K _element;

  @override
  Element get root => _element;
}
