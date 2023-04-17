import 'dart:html';

import '../../../wed.dart';

/// The Div class is a component that renders a div element.
///
/// It's used as a base class for the more specific DivXyz classes, such as DivRow and DivColumn.
///
class DivWedElement extends WedElement<DivProps, DivElement> {
  /// Creates a new [DivWedElement] instance with the given props.
  DivWedElement({
    DivProps? props = const DivProps(),
    List<Widget>? children,
  }) : super(
          tag: Tags.div,
          props: props,
          children: children ?? const [],
        );
}

/// The [Div] class represents the [DivWedElement] component.
class Div extends Widget {
  /// Creates a new [Div] instance with the given props and children.
  Div({
    this.props,
    this.children,
  });

  /// The props for this component, extends [ElementProps].
  final DivProps? props;

  /// Returns a list of child components to render.
  final List<Widget>? children;

  @override
  WedElement build() {
    return DivWedElement(
      props: props,
      children: children,
    );
  }
}
