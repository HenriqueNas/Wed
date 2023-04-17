import 'dart:html';

import '../../../wed.dart';

/// The [SpanWedElement] class is a component that renders a span element.
///
/// It's used as a base class for the more specific SpanXyz classes.
class SpanWedElement extends WedElement<SpanProps, SpanElement> {
  /// Creates a new [SpanWedElement] instance with the given props.
  SpanWedElement(
    this.textContent, {
    SpanProps? props = const SpanProps(),
    List<Widget>? children,
  }) : super(
          tag: Tags.span,
          props: props?.copyWith(textContent: textContent),
          children: children ?? const [],
        );

  /// The text content of the span element.
  String? textContent;
}

/// The [Span] class represents the [SpanWedElement] component.
class Span extends SpanWedElement implements Widget {
  /// Creates a new [Span] instance with the given props.
  Span(
    String? textContent, {
    SpanProps? props = const SpanProps(),
    List<Widget>? children,
  }) : super(
          textContent,
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
