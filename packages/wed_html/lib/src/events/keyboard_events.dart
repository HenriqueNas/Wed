// keyboard_event.dart
import 'dart:html';
import 'package:wed_html/wed_html.dart';

/// Base Keyboard event.
class BaseKeyboardEvent extends HtmlEvent<KeyboardEvent> {
  /// Creates an instance of [BaseKeyboardEvent].
  const BaseKeyboardEvent(
    KeyboardEvent event,
    EventCallback<KeyboardEvent> callback,
  ) : super(event: event, callback: callback);
}

/// Key down event.
class OnKeyDown extends HtmlEvent<KeyboardEvent> {
  /// Creates an instance of [OnKeyDown].
  OnKeyDown(EventCallback<KeyboardEvent> callback)
      : super(event: KeyboardEvent('keydown'), callback: callback);
}

/// Key up event.
class OnKeyUp extends HtmlEvent<KeyboardEvent> {
  /// Creates an instance of [OnKeyUp].
  OnKeyUp(EventCallback<KeyboardEvent> callback)
      : super(event: KeyboardEvent('keyup'), callback: callback);
}

/// Key press event.
class OnKeyPress extends HtmlEvent<KeyboardEvent> {
  /// Creates an instance of [OnKeyPress].
  OnKeyPress(EventCallback<KeyboardEvent> callback)
      : super(event: KeyboardEvent('keypress'), callback: callback);
}
