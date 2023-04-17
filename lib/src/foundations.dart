import 'dart:html';

import '../wed.dart';

/// The [renderWidget] function is the entry point for the framework.
///
/// It takes a [Widget] instance and an [Element] instance as parameters.
/// The [Widget] instance is the widget to render.
/// The [Element] instance is the HTML element that will contain the widget.
///
/// Use like:
///
/// ```dart
/// import 'package:wed/wed.dart';
/// import 'dart:html';
///
/// final app = querySelector('#app') as Element;
///
/// main () {
///  final widget = Div(id: 'my-app');
///
///   renderWidget(widget, app);
/// }
/// ```
void renderWidget(Widget widget, Element element) {
  element.append(widget.wed.htmlElement);
}
