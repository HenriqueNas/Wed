import 'dart:html' as html;

import 'package:wed_html/wed_html.dart';

/// {@template span}
/// The [Span] class is a component that renders a <span> tag element.
/// {@endtemplate}
class Span extends TagComponent<html.SpanElement, HtmlProps> {
  /// Creates an instance of [Span].
  Span(
    this.text, {
    super.events,
    List<NodeComponent>? children,
    super.props = const HtmlProps(),
  }) : super(
          tag: Tag.span,
          children: [TextComponent(text), ...?children],
        );

  /// Creates an instance of [Span] without text child.
  Span.children({
    super.props = const HtmlProps(),
    super.children,
    super.events,
  })  : text = null,
        super(tag: Tag.span);

  /// The text to render.
  final String? text;
}
