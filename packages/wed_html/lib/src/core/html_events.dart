import 'dart:html';

/// A class that represents an HTML event.
class HtmlEvents {
  /// Creates a new instance of [HtmlEvents].
  const HtmlEvents({
    required this.event,
    required this.callback,
  });

  /// The event.
  final Event event;

  /// The callback function.
  final void Function(Event event) callback;
}
