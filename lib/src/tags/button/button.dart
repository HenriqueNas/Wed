import 'dart:html';

import '../../../wed.dart';

/// A clickable button element.
class ButtonWedElement extends WedElement<ButtonProps, ButtonElement> {
  /// Creates a new [ButtonWedElement] instance with the given props.
  ButtonWedElement({
    ButtonProps? props = const ButtonProps(),
    List<Widget>? children,
  }) : super(
          tag: Tags.button,
          props: props,
          children: children ?? const [],
        );
}

/// The [Button] class represents the [ButtonWedElement] component.
class Button extends ButtonWedElement implements Widget {
  /// Creates a new [Button] instance with the given props.
  Button({
    ButtonProps? props = const ButtonProps(),
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
