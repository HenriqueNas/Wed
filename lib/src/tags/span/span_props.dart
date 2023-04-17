import 'dart:html';

import '../../../wed.dart';

/// The [SpanProps] class represents the props for the [SpanWedElement] component.
/// It extends [ElementProps] and adds the following props:
/// - [textContent] - the text to display on the span
/// The [SpanProps] class also overrides the [setStyles] and [updateStyles] methods to set the props on the root element.
class SpanProps extends ElementProps<SpanElement> {
  /// Creates a new [SpanProps] instance with the given props.
  const SpanProps({
    this.textContent,
    super.id,
    super.title,
    super.styles,
    super.className,
  });

  /// The text to display on the span.
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

  /// [copyWith] creates a new [SpanProps] instance with the given props.
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
