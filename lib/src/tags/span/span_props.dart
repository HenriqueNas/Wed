import 'dart:html';

import '../../../wed.dart';

class SpanProps extends GlobalProps<SpanElement> {

  const SpanProps({
    this.textContent,
    super.id,
    super.title,
    super.styles,
    super.className,
  });
  final String? textContent;

  @override
  void setStyles(SpanElement root) {
    super.setStyles(root);
    root.text = textContent ?? '';
  }

  @override
  void updateStyles(SpanElement root) {
    super.updateStyles(root);

    if (textContent != root.text) root.text = textContent ?? '';
  }

  SpanProps copyWith({
    String? textContent,
    String? id,
    String? title,
    CssStyle? styles,
    String? className,
  }) {
    return SpanProps(
      textContent: textContent ?? this.textContent,
      id: id ?? this.id,
      title: title ?? this.title,
      styles: styles ?? this.styles,
      className: className ?? this.className,
    );
  }
}
