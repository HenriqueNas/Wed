import 'dart:html';

import 'package:wed_html/wed_html.dart';

/// {@template tag_component}
/// The [TagComponent] class is a base class for all html components.
///
/// It's used as a base class for the more specific `HtmlXyz` classes,
/// such as `HtmlDiv` and `HtmlButton`.
///
/// It extends [NodeComponent].
/// {@endtemplate}
abstract class TagComponent<N extends Element, P extends HtmlProps>
    extends NodeComponent<N, P> {
  /// Creates an instance of [TagComponent]. <br />
  ///
  /// {@macro tag_component}
  TagComponent({
    P? props,
    this.tag = Tag.div,
    super.events,
    super.children,
  }) : super(
          props: props ?? const HtmlProps() as P,
          node: Element.tag(tag.name) as N,
        ) {
    render();
  }

  /// The tag to render.
  final Tag tag;

  @override
  void render() {
    children.forEach((child) {
      node.append(child.node);
    });

    _updateStyle();
    super.render();
  }

  void _updateStyle() {
    props.style?.toMap().forEach((key, value) {
      node.style.setProperty(key, value);
    });
  }

  @override
  List<NodeComponent> build() {
    return children;
  }
}
