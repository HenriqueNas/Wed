import 'dart:html';

import '../../../wed.dart';

/// The Div class is a component that renders a div element.
///
/// It's used as a base class for the more specific DivXyz classes, such as DivRow and DivColumn.
///
class Div extends WedElement<DivProps, DivElement> {
  /// Creates a new [Div] instance with the given props.
  Div({
    super.props,
    super.children,
  }) : super(tag: Tags.div);
}
