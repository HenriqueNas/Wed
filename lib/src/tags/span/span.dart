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
class Span extends Widget {
  /// Creates a new [Span] instance with the given props and children.
  Span(
    this.textContent, {
    this.props,
    this.children,
  });

  /// The text content of the span element.
  final String? textContent;

  /// The props for this component, extends [ElementProps].
  final SpanProps? props;

  /// Returns a list of child components to render.
  final List<Widget>? children;

  @override
  WedElement build() {
    return SpanWedElement(
      textContent,
      props: props,
      children: children,
    );
  }
}
