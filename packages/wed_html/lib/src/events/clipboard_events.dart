import 'dart:html';
import 'package:wed_html/wed_html.dart';

/// Base Clipboard event.
class BaseClipboardEvent extends HtmlEvent<ClipboardEvent> {
  /// Creates an instance of [BaseClipboardEvent].
  BaseClipboardEvent(
    ClipboardEvent event,
    EventCallback<ClipboardEvent> callback,
  ) : super(event: event, callback: callback);
}

/// Cut event (text/element is cut to clipboard).
class OnCut extends HtmlEvent<ClipboardEvent> {
  /// Creates an instance of [OnCut].
  OnCut(EventCallback<ClipboardEvent> callback)
      : super(event: ClipboardEvent('cut'), callback: callback);
}

/// Copy event (text/element is copied to clipboard).
class OnCopy extends HtmlEvent<ClipboardEvent> {
  /// Creates an instance of [OnCopy].
  OnCopy(EventCallback<ClipboardEvent> callback)
      : super(event: ClipboardEvent('copy'), callback: callback);
}

/// Paste event (text/element is pasted from clipboard).
class OnPaste extends HtmlEvent<ClipboardEvent> {
  /// Creates an instance of [OnPaste].
  OnPaste(EventCallback<ClipboardEvent> callback)
      : super(event: ClipboardEvent('paste'), callback: callback);
}
