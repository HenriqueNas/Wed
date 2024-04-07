import 'dart:html';

import 'package:wed_core/wed_core.dart';
import 'package:wed_html/wed_html.dart';

/// {@template node_component}
/// The [NodeComponent] class is a base class for all html components.
///
/// It's used as a base class for the more specific `HtmlXyz` classes,
/// such as `HtmlDiv` and `HtmlButton`.
///
/// It extends [MultiChildrenComponent] from `wed_core`.
/// {@endtemplate}
abstract class NodeComponent<N extends Node, P extends HtmlProps>
    extends MultiChildrenComponent<P> {
  /// Creates an instance of [NodeComponent]. <br />
  ///
  /// {@macro node_component}
  NodeComponent({
    required super.props,
    required this.node,
    this.children = const [],
    this.events,
  }) {
    render();
  }

  /// The children to render.
  final List<NodeComponent> children;

  /// List of events for this component.
  final List<Event>? events;

  /// The [Node] that represents this component.
  final N node;

  @override
  List<Component> build() => children;

  @override
  void render() {
    // update the events
    events?.forEach((event) {
      node.addEventListener(event.type, (_) {
        event
          ..stopPropagation()
          ..preventDefault()
          ..stopImmediatePropagation();

        event.currentTarget?.dispatchEvent(event);
      });
    });
  }
}
