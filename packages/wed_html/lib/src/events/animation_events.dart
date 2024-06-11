// animation_event.dart
import 'dart:html';
import 'package:wed_html/wed_html.dart';

/// Animation event.
class BaseAnimationEvent extends HtmlEvent<AnimationEvent> {
  /// Creates an instance of [BaseAnimationEvent].
  const BaseAnimationEvent(
    AnimationEvent event,
    EventCallback<AnimationEvent> callback,
  ) : super(
          event: event,
          callback: callback,
        );
}

/// Animation start event.
class OnAnimationStart extends HtmlEvent<AnimationEvent> {
  /// Creates an instance of [OnAnimationStart].
  OnAnimationStart(EventCallback<AnimationEvent> callback)
      : super(
          event: AnimationEvent('animationstart'),
          callback: callback,
        );
}

/// Animation end event.
class OnAnimationEnd extends HtmlEvent<AnimationEvent> {
  /// Creates an instance of [OnAnimationEnd].
  OnAnimationEnd(EventCallback<AnimationEvent> callback)
      : super(
          event: AnimationEvent('animationend'),
          callback: callback,
        );
}

/// Animation iteration event.
class OnAnimationIteration extends HtmlEvent<AnimationEvent> {
  /// Creates an instance of [OnAnimationIteration].
  OnAnimationIteration(EventCallback<AnimationEvent> callback)
      : super(
          event: AnimationEvent('animationiteration'),
          callback: callback,
        );
}
