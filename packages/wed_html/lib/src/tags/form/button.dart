import 'dart:html';

import 'package:wed_html/wed_html.dart';

/// {@template button}
/// The [Button] class is a component that renders a <button> element.
///
/// It extends [TagComponent].
/// {@endtemplate}
class Button extends TagComponent<ButtonElement, HtmlProps> {
  ///
  Button(
    this.text, {
    super.props,
    this.onClick,
    List<HtmlEvents>? events,
    List<NodeComponent>? children,
  }) : super(
          tag: Tag.button,
          children: [TextComponent(text), ...?children],
          events: onClick != null ? [...?events, OnClick(onClick)] : events,
        );

  /// Creates an instance of [Button] without text child.
  Button.children({
    super.props = const HtmlProps(),
    super.children,
    this.onClick,
    List<HtmlEvents>? events,
  })  : text = null,
        super(
          tag: Tag.button,
          events: onClick != null ? [...?events, OnClick(onClick)] : events,
        );

  /// The text to render.
  final String? text;

  ///
  final void Function(Event event)? onClick;
}
