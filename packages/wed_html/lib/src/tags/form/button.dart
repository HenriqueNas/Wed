import 'dart:html';

import 'package:wed_html/wed_html.dart';

/// {@template button}
/// The [Button] class is a component that renders a <button> element.
///
/// It extends [TagComponent].
/// {@endtemplate}
class Button extends TagComponent<SpanElement, HtmlProps> {
  ///
  Button(
    this.text, {
    super.events,
    super.props,
    List<NodeComponent>? children,
  }) : super(
          tag: Tag.button,
          children: [TextComponent(text), ...?children],
        );

  /// Creates an instance of [Button] without text child.
  Button.children({
    super.props = const HtmlProps(),
    super.children,
    super.events,
  })  : text = null,
        super(tag: Tag.button);

  /// The text to render.
  String? text;
}
