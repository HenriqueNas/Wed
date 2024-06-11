import 'dart:html';
import 'package:wed_html/wed_html.dart';

/// Base UI event.
class BaseUiEvent extends HtmlEvent<UIEvent> {
  /// Creates an instance of [BaseUiEvent].
  const BaseUiEvent(
    UIEvent event,
    EventCallback<UIEvent> callback,
  ) : super(
          event: event,
          callback: callback,
        );
}

/// Input event.
class OnInput extends BaseUiEvent {
  /// Creates an instance of [OnInput].
  OnInput(
    EventCallback<UIEvent> callback,
  ) : super(UIEvent('input'), callback);
}

/// Submit event.
class OnSubmit extends HtmlEvent<UIEvent> {
  /// Creates an instance of [OnSubmit].
  OnSubmit(EventCallback<UIEvent> callback)
      : super(event: UIEvent('submit'), callback: callback);
}
