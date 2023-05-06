import 'dart:html';

import '../wed_core.dart';

/// The renderApp function is the entry point for the framework.
///
/// It takes a Component instance and an Element instance as parameters.
/// The Component instance is the root component of the application.
/// The Element instance is the HTML element that will contain the root component.
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
///   final component = Div(id: 'my-app');
///
///   renderApp(component, app);
/// }
/// ```
void renderApp(Component component, Element element) {
  element.append(component.element);
}
