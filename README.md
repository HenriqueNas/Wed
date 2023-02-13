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
import 'package:web_framework/web_framework.dart';

void main() {
  final appElement = querySelector('#app');
  final component = Div(
    style: CssStyle(
      width: CssValue.px(400),
      height: CssValue.px(400),
      backgroundColor: CssColor.fromHex('#f0f0f0'),
      display: CssDisplay.flex,
      alignItems: CssAlignItems.center,
      justifyContent: CssJustifyContent.center,
      borderRadius: CssValue.px(8),
    ),
    children: [
      Component(
        style: CssStyle(
          color: CssColor.black,
          fontSize: CssValue.px(32),
        ),
        children: [
          'Hello, World!',
        ],
      ),
    ],
  );

  renderApp(component, appElement);
}
