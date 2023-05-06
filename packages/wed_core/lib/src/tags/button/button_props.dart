import 'dart:html';

import '../../../wed_core.dart';

/// {@template button_props}
/// A [Component] that renders a `<button>` tag.
/// {@endtemplate}
class ButtonProps extends GlobalProps<ButtonElement> {
  /// {@macro button_props}
  ButtonProps({
    this.onClick,
    this.disabled,
    this.innerText,
    super.styles,
    super.id,
    super.className,
  });

  /// The text to display inside the button.
  String? innerText;

  /// Whether the button is disabled.
  bool? disabled;

  /// The event handler for the `onClick` event.
  void Function(MouseEvent event)? onClick;

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
