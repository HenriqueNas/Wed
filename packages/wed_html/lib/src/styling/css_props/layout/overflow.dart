import 'package:wed_html/wed_html.dart';

/// Represents the CSS `overflow` property.
///
/// The overflow CSS shorthand property sets the desired behavior
/// when content does not fit in the element's padding box (overflows)
/// in the horizontal and/or vertical direction.
enum Overflow with CssPropMixin {
  /// The content is not clipped and may be rendered outside the padding box.
  visible,

  /// The content is clipped and no scrolling mechanism is provided.
  hidden,

  /// The content is clipped and a scrolling mechanism is provided.
  scroll,

  /// Overflow content is clipped at the element's padding box, and overflow
  /// content can be scrolled into view using scroll bars. Unlike scroll,
  /// user agents display scroll bars only if the content is overflowing.
  /// If content fits inside the element's padding box, it looks the same as
  /// with visible but still establishes a new formatting context.
  /// The element box is a scroll container.
  auto,

  /// The content is clipped and a scrolling mechanism is provided only when necessary. <br />
  clip,

  /// Sets this property to its default value.
  initial,

  /// Inherits this property from its parent element.
  inherit;

  @override
  String get propValue => name;

  @override
  String get propName => 'overflow';
}
