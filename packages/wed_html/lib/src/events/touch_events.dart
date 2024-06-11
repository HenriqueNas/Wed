import 'dart:html';
import 'package:wed_html/wed_html.dart';

/// Base Touch event.
class BaseTouchEvent extends HtmlEvent<TouchEvent> {
  /// Creates an instance of [BaseTouchEvent].
  BaseTouchEvent(
    TouchEvent event,
    EventCallback<TouchEvent> callback,
  ) : super(event: event, callback: callback);
}

/// Touch start event.
class OnTouchStart extends HtmlEvent<TouchEvent> {
  /// Creates an instance of [OnTouchStart].
  OnTouchStart(EventCallback<TouchEvent> callback)
      : super(event: TouchEvent('touchstart'), callback: callback);
}

/// Touch move event.
class OnTouchMove extends HtmlEvent<TouchEvent> {
  /// Creates an instance of [OnTouchMove].
  OnTouchMove(EventCallback<TouchEvent> callback)
      : super(event: TouchEvent('touchmove'), callback: callback);
}

/// Touch end event.
class OnTouchEnd extends HtmlEvent<TouchEvent> {
  /// Creates an instance of [OnTouchEnd].
  OnTouchEnd(EventCallback<TouchEvent> callback)
      : super(event: TouchEvent('touchend'), callback: callback);
}

/// Touch cancel event.
class OnTouchCancel extends HtmlEvent<TouchEvent> {
  /// Creates an instance of [OnTouchCancel].
  OnTouchCancel(EventCallback<TouchEvent> callback)
      : super(event: TouchEvent('touchcancel'), callback: callback);
}
