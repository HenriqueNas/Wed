import 'package:wed/src/component/component.dart';
import 'package:wed/src/tags/div/div_props.dart';

/// The Div class is a component that renders a div element.
///
/// It's used as a base class for the more specific DivXyz classes, such as DivRow and DivColumn.
///
class Div extends Component<DivProps> {
  Div({
    super.key,
    super.ref,
    super.props,
  }) : super(type: 'div');
}
