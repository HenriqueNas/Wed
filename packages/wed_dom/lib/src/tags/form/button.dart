import 'dart:html';

import 'package:wed_dom/wed_dom.dart';

/// {@template button}
/// The [Button] class is a component that renders a <button> element.
///
/// It extends [TagComponent].
class Button extends TagComponent<SpanElement, HtmlGlobalProps> {
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
    super.props = const HtmlGlobalProps(),
    super.children,
    super.events,
  })  : text = null,
        super(tag: Tag.button);

  /// The text to render.
  String? text;
}
