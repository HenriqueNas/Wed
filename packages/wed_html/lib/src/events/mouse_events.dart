import 'dart:html';

import 'package:wed_html/wed_html.dart';

/// Base mouse event.
class BaseMouseEvent extends HtmlEvents<MouseEvent> {
  /// Creates an instance of [BaseMouseEvent].
  const BaseMouseEvent(
    MouseEvent event,
    EventCallback<MouseEvent> callback,
  ) : super(event: event, callback: callback);
}

/// Mouse click event.
class OnClick extends BaseMouseEvent {
  /// Creates an instance of [OnClick].
  OnClick(EventCallback<MouseEvent> callback)
      : super(MouseEvent('click'), callback);
}

/// Mouse double click event.
class OnDoubleClick extends BaseMouseEvent {
  /// Creates an instance of [OnDoubleClick].
  OnDoubleClick(EventCallback<MouseEvent> callback)
      : super(MouseEvent('dblclick'), callback);
}

/// Mouse down event (button is pressed).
class OnMouseDown extends BaseMouseEvent {
  /// Creates an instance of [OnMouseDown].
  OnMouseDown(EventCallback<MouseEvent> callback)
      : super(MouseEvent('mousedown'), callback);
}

/// Mouse up event (button is released).
class OnMouseUp extends BaseMouseEvent {
  /// Creates an instance of [OnMouseUp].
  OnMouseUp(EventCallback<MouseEvent> callback)
      : super(MouseEvent('mouseup'), callback);
}

/// Mouse move event (mouse is moved).
class OnMouseMove extends BaseMouseEvent {
  /// Creates an instance of [OnMouseMove].
  OnMouseMove(EventCallback<MouseEvent> callback)
      : super(MouseEvent('mousemove'), callback);
}

/// Mouse over event (mouse enters an element's boundaries).
class OnMouseOver extends BaseMouseEvent {
  /// Creates an instance of [OnMouseOver].
  OnMouseOver(EventCallback<MouseEvent> callback)
      : super(MouseEvent('mouseover'), callback);
}

/// Mouse out event (mouse leaves an element's boundaries).
class OnMouseOut extends BaseMouseEvent {
  /// Creates an instance of [OnMouseOut].
  OnMouseOut(EventCallback<MouseEvent> callback)
      : super(MouseEvent('mouseout'), callback);
}

/// Mouse enter event (mouse enters an element or its descendants).
class OnMouseEnter extends BaseMouseEvent {
  /// Creates an instance of [OnMouseEnter].
  OnMouseEnter(EventCallback<MouseEvent> callback)
      : super(MouseEvent('mouseenter'), callback);
}

/// Mouse leave event (mouse leaves an element or its descendants).
class OnMouseLeave extends BaseMouseEvent {
  /// Creates an instance of [OnMouseLeave].
  OnMouseLeave(EventCallback<MouseEvent> callback)
      : super(MouseEvent('mouseleave'), callback);
}

/// Mouse wheel event (mouse wheel is scrolled).
class OnWheel extends HtmlEvents<WheelEvent> {
  /// Creates an instance of [OnWheel].
  OnWheel(EventCallback<WheelEvent> callback)
      : super(event: WheelEvent('wheel'), callback: callback);
}
