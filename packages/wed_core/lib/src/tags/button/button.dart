import 'dart:html';

import '../../../wed_core.dart';

/// A clickable button element.
class Button extends Component<ButtonProps, ButtonElement> {
  /// Creates a new [Button] instance with the given props.
  Button({
    super.key,
    super.props,
    this.children = const [],
  }) : super(tag: Tags.button);

  final List<Component> children;

  @override
  List<Component> build() {
    return children;
  }
}
