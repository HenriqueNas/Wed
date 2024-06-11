import 'dart:html';
import 'package:wed_html/wed_html.dart';

/// Base Pointer event.
class BasePointerEvent extends HtmlEvent<PointerEvent> {
  /// Creates an instance of [BasePointerEvent].
  BasePointerEvent(
    PointerEvent event,
    EventCallback<PointerEvent> callback,
  ) : super(event: event, callback: callback);
}

/// Pointer down event.
class OnPointerDown extends HtmlEvent<PointerEvent> {
  /// Creates an instance of [OnPointerDown].
  OnPointerDown(EventCallback<PointerEvent> callback)
      : super(event: PointerEvent('pointerdown'), callback: callback);
}

/// Pointer move event.
class OnPointerMove extends HtmlEvent<PointerEvent> {
  /// Creates an instance of [OnPointerMove].
  OnPointerMove(EventCallback<PointerEvent> callback)
      : super(event: PointerEvent('pointermove'), callback: callback);
}

/// Pointer up event.
class OnPointerUp extends HtmlEvent<PointerEvent> {
  /// Creates an instance of [OnPointerUp].
  OnPointerUp(EventCallback<PointerEvent> callback)
      : super(event: PointerEvent('pointerup'), callback: callback);
}

/// Pointer cancel event.
class OnPointerCancel extends HtmlEvent<PointerEvent> {
  /// Creates an instance of [OnPointerCancel].
  OnPointerCancel(EventCallback<PointerEvent> callback)
      : super(event: PointerEvent('pointercancel'), callback: callback);
}

/// Pointer over event.
class OnPointerOver extends HtmlEvent<PointerEvent> {
  /// Creates an instance of [OnPointerOver].
  OnPointerOver(EventCallback<PointerEvent> callback)
      : super(event: PointerEvent('pointerover'), callback: callback);
}

/// Pointer out event.
class OnPointerOut extends HtmlEvent<PointerEvent> {
  /// Creates an instance of [OnPointerOut].
  OnPointerOut(EventCallback<PointerEvent> callback)
      : super(event: PointerEvent('pointerout'), callback: callback);
}

/// Pointer enter event.
class OnPointerEnter extends HtmlEvent<PointerEvent> {
  /// Creates an instance of [OnPointerEnter].
  OnPointerEnter(EventCallback<PointerEvent> callback)
      : super(event: PointerEvent('pointerenter'), callback: callback);
}

/// Pointer leave event.
class OnPointerLeave extends HtmlEvent<PointerEvent> {
  /// Creates an instance of [OnPointerLeave].
  OnPointerLeave(EventCallback<PointerEvent> callback)
      : super(event: PointerEvent('pointerleave'), callback: callback);
}
