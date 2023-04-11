import 'dart:html';

import '../../../wed.dart';

/// The [Span] class is a component that renders a span element.
///
/// It's used as a base class for the more specific SpanXyz classes.
class Span extends WedElement<SpanProps, SpanElement> {
  /// Creates a new [Span] instance with the given props.
  Span(
    this.textContent, {
    SpanProps props = const SpanProps(),
    super.children,
  }) : super(tag: Tags.span, props: props.copyWith(textContent: textContent));

  /// The text content of the span element.
  String? textContent;
}
