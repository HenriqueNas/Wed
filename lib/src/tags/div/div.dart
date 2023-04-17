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
class Div extends DivWedElement implements Widget {
  /// Creates a new [Div] instance with the given props.
  Div({
    DivProps? props = const DivProps(),
    List<Widget>? children,
  }) : super(
          props: props,
          children: children ?? const [],
        );

  @override
  Widget build() {
    return this;
  }

  @override
  void initState() {}

  @override
  void setState(VoidCallback callback) {
    callback();
  }

  @override
  WedElement<ElementProps<Element>, Element> get wed => this;
}
