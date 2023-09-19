import 'dart:html';

import 'package:wed_dom/wed_dom.dart';

/// {@template text_component}
/// {@endtemplate}
class TextComponent<P extends HtmlGlobalProps>
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
          props: props ?? const HtmlGlobalProps() as P,
        );
}
