import 'dart:html';

/// `void Function(Event event)` callback.
typedef EventCallback<E extends Event> = void Function(E event);

/// A class that represents an HTML event.
class HtmlEvents<E extends Event> {
  /// Creates a new instance of [HtmlEvents].
  const HtmlEvents({
    required this.event,
    required this.callback,
  });

  /// The event.
  final Event event;

  /// The callback function.
  final EventCallback<E> callback;
}
