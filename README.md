# Dart Web Framework

This is a simple web framework for Dart, inspired by React and using Flutter syntax. It provides a set of basic components and a global method for rendering the application.

## Components

The framework currently provides two components:

### `Component`

This is a basic component that can be used as a base for other components. It provides a set of common properties such as `className`, `style`, and `children`. 

### `Div`

This component represents an HTML `<div>` element and provides all the common styles for this element.

## Style Props

The `CssBaseProps` class provides a set of common CSS style properties that can be used to style the components.

## Rendering

The `renderApp` function is used to render the application by creating an instance of the root component and mounting it to the specified element.

## Example

```dart
import 'dart:html';
import 'package:web/web.dart';

void main() {
  final appElement = querySelector('#app');
  final component = Div(
    style: CssBaseProps(
      // for now all CssBaseProps attributes are nullable Strings
      // I'm working on typed CSS properties
      width: '400px',
      height: '400px',
      backgroundColor: '#f0f0f0',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      borderRadius: '10px',
    ),
    children: [
      Component(
        style: CssBaseProps(
          color: '#000',
          fontSize: '24px',
        ),
        children: [
          'Hello, World!',
        ],
      ),
    ],
  );

  renderApp(component, appElement);
}
