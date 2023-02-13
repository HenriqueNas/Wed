import 'package:wed/src/component.dart';

/// The Div class is a component that renders a div element.
///
/// It's used as a base class for the more specific DivXyz classes, such as DivRow and DivColumn.
///
class Div extends Component {
  Div({
    super.tag = 'div',
    super.children,
    super.styles,
  }) : super();
}
