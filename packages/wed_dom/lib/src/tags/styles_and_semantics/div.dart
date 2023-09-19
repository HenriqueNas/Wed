import 'dart:html';

import 'package:wed_dom/wed_dom.dart';

/// {@template div}
/// The [Div] class is a component that renders a <div> element.
///
/// It extends [NodeComponent] and have just the [HtmlGlobalProps] properties.
/// {@endtemplate}
class Div extends TagComponent<DivElement, HtmlGlobalProps> {
  /// Creates an instance of [Div].
  Div({
    super.props = const HtmlGlobalProps(),
    super.children,
    super.events,
  }) : super(tag: Tag.div);
}
