import 'package:wed/src/component/component.dart';

import 'button_props.dart';

/// A clickable button element.
class Button extends Component<ButtonProps> {
  /// Creates a new [Button] instance with the given props.
  Button({
    super.key,
    super.ref,
    super.props = const ButtonProps(),
  }) : super(type: 'button') {
    if (props != null) {
      root.text = props!.text;
      root.onClick.listen((event) {
        props!.onClick?.call();
      });
    }
  }
}
