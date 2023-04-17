import 'dart:html';

import '../../wed.dart';

/// The [Widget] class is the base class for all widgets.
/// It's used as a base class for the more specific WidgetXyz classes.
abstract class Widget {
  /// Creates a new [WedElement] instance with the given tag, props and children.
  WedElement build();

  /// The [initState] method is called when the widget is first created.
  void initState() {
    _updateComponent();
  }

  ///
  void setState(VoidCallback callback) {
    callback();
    _updateComponent();
  }

  void _updateComponent() {
    final element = wed.htmlElement;
    final parent = element.parent;
    final nextSibling = element.nextElementSibling;
    final previousSibling = element.previousElementSibling;

    final newElement = build().htmlElement;

    if (parent != null) {
      if (nextSibling != null) {
        parent.insertBefore(newElement, nextSibling);
      } else if (previousSibling != null) {
        parent.insertBefore(newElement, previousSibling.nextElementSibling);
      } else {
        parent.append(newElement);
      }
    }
  }

  /// The [Element] for this widget.
  WedElement get wed => build();
}
