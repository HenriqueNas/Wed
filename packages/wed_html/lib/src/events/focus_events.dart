import 'dart:html';
import 'package:wed_html/wed_html.dart';

/// Base Focus event.
class BaseFocusEvent extends HtmlEvent<FocusEvent> {
  /// Creates an instance of [BaseFocusEvent].
  const BaseFocusEvent(
    FocusEvent event,
    EventCallback<FocusEvent> callback,
  ) : super(event: event, callback: callback);
}

/// Focus event.
class OnFocus extends HtmlEvent<FocusEvent> {
  /// Creates an instance of [OnFocus].
  OnFocus(EventCallback<FocusEvent> callback)
      : super(event: FocusEvent('focus'), callback: callback);
}

/// Blur event.
class OnBlur extends HtmlEvent<FocusEvent> {
  /// Creates an instance of [OnBlur].
  OnBlur(EventCallback<FocusEvent> callback)
      : super(event: FocusEvent('blur'), callback: callback);
}

/// Focus in event.
class OnFocusIn extends HtmlEvent<FocusEvent> {
  /// Creates an instance of [OnFocusIn].
  OnFocusIn(EventCallback<FocusEvent> callback)
      : super(event: FocusEvent('focusin'), callback: callback);
}

/// Focus out event.
class OnFocusOut extends HtmlEvent<FocusEvent> {
  /// Creates an instance of [OnFocusOut].
  OnFocusOut(EventCallback<FocusEvent> callback)
      : super(event: FocusEvent('focusout'), callback: callback);
}
