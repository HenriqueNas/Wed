import 'dart:html';

import 'package:wed_html/wed_html.dart';

/// The renderApp function is the entry point for the Wed framework.
///
/// It takes a [TagComponent] instance and an [Element] instance as parameters:
///
/// The [TagComponent] instance is the root component of the application.
/// The [Element] instance is the html element that contain the root component
///
/// Use like:
///
/// ```dart
/// import 'package:wed_core/wed_core.dart';
///
/// main () {
///   final component = Div(id: 'my-app');
///
///   renderApp(component);
/// }
/// ```
void renderApp(TagComponent component, [Element? element]) {
  final output = element ?? querySelector('#output');

  output ?? DivElement()
    ..id = 'output'
    ..append(component.node);
}
