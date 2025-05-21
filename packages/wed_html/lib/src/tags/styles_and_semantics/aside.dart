import 'dart:html';

import 'package:wed_html/wed_html.dart';

/// {@template aside}
/// The [Aside] class is a component that renders an `<aside>` HTML element.
///
/// It represents a portion of a document whose content is only indirectly related
/// to the document's main content. Asides are frequently presented as sidebars
/// or call-out boxes.
/// {@endtemplate}
class Aside extends TagComponent<HtmlElement, HtmlProps> {
  /// Creates an instance of [Aside].
  Aside({
    super.props = const HtmlProps(),
    super.children,
    super.events,
  }) : super(tag: Tag.aside);
}
