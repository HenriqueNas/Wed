import 'dart:html';

import '../../../wed.dart';

/// The [ButtonProps] class represents the props for the [ButtonElement] component.
/// It extends [ElementProps] and adds the following props:
/// - [innerText] - the text to display on the button
/// - [disabled] - whether the button is disabled
/// - [onClick] - the function to call when the button is clicked
/// The [ButtonProps] class also overrides the [setStyles] and [updateStyles] methods to set the props on the root element.
class ButtonProps extends ElementProps<ButtonElement> {
  /// Creates a new [ButtonProps] instance with the given props.
  const ButtonProps({
    this.onClick,
    this.disabled,
    this.innerText,
    super.styles,
    super.id,
    super.className,
  });

  /// The text to display on the button.
  final String? innerText;

  /// Whether the button is disabled.
  final bool? disabled;

  /// The function to call when the button is clicked.
  final void Function(MouseEvent event)? onClick;

  @override
  void setStyles(ButtonElement root) {
    super.setStyles(root);

    root
      ..innerText = innerText ?? ''
      ..disabled = disabled ?? false;

    root.onClick.listen((event) {
      onClick?.call(event);
    });
  }

  /// [updateStyles] checks if the props have changed and updates the [root] element.
  @override
  void updateStyles(ButtonElement root) {
    super.updateStyles(root);

    if (innerText != root.innerText) {
      root.innerText = innerText ?? '';
    }
    if (disabled != root.disabled) {
      root.disabled = disabled ?? false;
    }
    if (onClick != null) {
      root.onClick.listen((event) {
        onClick?.call(event);
      });
    }
  }
}
