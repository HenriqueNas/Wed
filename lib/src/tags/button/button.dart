import 'dart:html';

import '../../../wed.dart';

/// A clickable button element.
class Button extends WedElement<ButtonProps, ButtonElement> {
  /// Creates a new [Button] instance with the given props.
  Button({
    super.props,
    super.children,
  }) : super(tag: Tags.button);
}
