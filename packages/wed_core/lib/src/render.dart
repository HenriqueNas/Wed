import 'dart:html';

import 'package:wed_core/wed_core.dart';

/// The renderApp function is the entry point for the framework.
///
/// It takes a Component instance and an Element instance as parameters.
/// The Component instance is the root component of the application.
/// The Element instance is the HTML element that will contain the root component
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
void renderApp(Component component, [Element? element]) {
  final output = element ?? querySelector('#output');

  output ?? DivElement()
    ..id = 'output'
    ..append(component.element);
}

/// The clearElement function is used to clear an element
void clearElement([Element? element]) {
  final output = element ?? querySelector('#output');

  output?.children.clear();
}

/// The clearComponent function is used to clear a component.
void clearComponent(Component component) {
  component.element.children.clear();
}
