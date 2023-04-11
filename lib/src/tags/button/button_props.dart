import 'dart:html';

import '../../../wed.dart';

class ButtonProps extends GlobalProps<ButtonElement> {

  ButtonProps({
    this.onClick,
    this.disabled,
    this.innerText,
    super.styles,
    super.id,
    super.className,
  });
  String? innerText;
  bool? disabled;
  void Function(MouseEvent event)? onClick;

  @override
  void setStyles(ButtonElement root) {
    super.setStyles(root);

    root.innerText = innerText ?? '';
    root.disabled = disabled ?? false;
    root.onClick.listen((event) {
      onClick?.call(event);
    });
  }

  /// [update] checks if the props have changed and updates the [root] element.
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
