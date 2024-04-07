import 'dart:html';

import 'package:wed_html/wed_html.dart';

/// {@template div}
/// The [Div] class is a component that renders a <div> element.
///
/// It extends [NodeComponent] and have just the [HtmlProps] properties.
/// {@endtemplate}
class Div extends TagComponent<DivElement, HtmlProps> {
  /// Creates an instance of [Div].
  Div({
    super.props = const HtmlProps(),
    super.children,
    super.events,
  }) : super(tag: Tag.div);
}
