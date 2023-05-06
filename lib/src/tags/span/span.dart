import 'dart:html';

import '../../../wed.dart';

/// The [Span] class is a component that renders a span element.
///
/// It's used as a base class for the more specific SpanXyz classes.
class Span extends Component<SpanProps, SpanElement> {

  Span(
    this.textContent, {
    super.key,
    SpanProps props = const SpanProps(),
    this.children = const [],
  }) : super(tag: Tags.span, props: props.copyWith(textContent: textContent));
  String? textContent;

  final List<Component> children;

  @override
  List<Component> build() {
    return children;
  }
}
