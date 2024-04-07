import 'dart:html';

import 'package:wed_html/wed_html.dart';

/// {@template text_component}
/// {@endtemplate}
class TextComponent<P extends HtmlProps>
    extends NodeComponent<CharacterData, P> {
  /// Creates an instance of [TextComponent]
  /// with a single text child. <br />
  /// {@macro text_component}
  TextComponent(
    String? text, {
    super.events,
    super.children,
    P? props,
  }) : super(
          node: Text(text ?? ''),
          props: props ?? const HtmlProps() as P,
        );
}
