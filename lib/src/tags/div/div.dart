import 'dart:html';

import '../../../wed.dart';

/// The Div class is a component that renders a div element.
///
/// It's used as a base class for the more specific DivXyz classes, such as DivRow and DivColumn.
///
class Div extends Component<DivProps, DivElement> {
  Div({
    super.key,
    super.props,
    this.children = const [],
  }) : super(tag: Tags.div);

  final List<Component> children;

  @override
  List<Component> build() {
    return children;
  }
}
