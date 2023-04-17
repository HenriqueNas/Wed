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
class Button extends Widget {
  /// Creates a new [Button] instance with the given props and children.
  Button({
    this.props,
    this.children,
  });

  /// The props for this component, extends [ElementProps].
  final ButtonProps? props;

  /// Returns a list of child components to render.
  final List<Widget>? children;

  @override
  WedElement build() {
    return ButtonWedElement(
      props: props,
      children: children,
    );
  }
}
