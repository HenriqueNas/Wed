# Wed Framework

The Wed Framework is a simple web framework for Dart, inspired by React and using Flutter syntax. It provides a set of basic components and a global method for rendering the application.

## Getting Started

### Installing

To use the Wed framework, first you'll need to create a new Dart web project and add the wed package to your pubspec.yaml file:

```yaml
dependencies:
  wed: ^0.0.2
```

Or just run the following command:
```bash
$ dart pub add wed
```

### Using

Then, you can import the package into your project and start using the provided components:

```dart
import 'dart:html';

import 'package:wed/wed.dart';

final app = querySelector("#output") as DivElement;

void main() {
  final button = Button(
    props: ButtonProps(
      text: 'Click me',
      onClick: () => print('Clicked'),
      styles: CssBaseStyle(
        height: '50px',
        width: '150px',
        textAlign: 'center',
        color: 'white',
        backgroundColor: 'purple',
      ),
    ),
  );

  final div = Div(
    props: DivProps(
      children: [button],
      styles: CssBaseStyle(
        height: '300px',
        width: '300px',
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        backgroundColor: 'white',
        borderRadius: BorderRadius.all(50),
      ),
    ),
  );

  const componentStyle = CssBaseStyle(
    height: '100vh',
    width: '100vw',
    backgroundColor: 'blue',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
  );

  final component = Div(
    props: DivProps(
      styles: componentStyle,
      children: [div],
    ),
  );

  renderApp(component, app);
}

```

_**important:** Change your index.html first div tag to have id as "app", to use the code below._

## Classes and Helpers

The `Component` class is the base class for all components, and it contains a basic set of methods for rendering the component and updating its state.

### `Component` Class

The `Component` class contains the following methods:

- `render()`: This method returns a `Widget` object that represents the component's current state.
- `update()`: This method updates the component's state and triggers a re-render.
- `setState()`: This method allows the component's state to be updated, triggering a re-render.

### `ComponentBaseProps` Class

The `ComponentBaseProps` class is the base class for all component props classes.

### `Div` Class

The `Div` class is a basic container component.

### `Button` Class

The `Button` class is a basic button component.

## CSS

The framework also provides a basic set of CSS classes and utilities.

### `CSSProps` Class

The `CSSProps` class is the base class for all CSS properties.

### `CSSBaseStyle` Class

The `CSSBaseStyle` class is the base class for all CSS styles.

### `BorderRadius` Class

The `BorderRadius` class represents the border radius property for CSS.


## Project Structure

The project is structured as follows:

web/
├── lib/
│ ├── src/
│ │ ├── component/
│ │ │ ├── component_base_props.dart
│ │ │ └── component.dart
│ │ ├── css/
│ │ │ ├── props/
│ │ │ │ ├── border_radius.dart
│ │ │ │ └── css_props.dart
│ │ │ └── css_base_style.dart
│ │ └── div.dart
│ │ └── fundamentals.dart
│ ├── tags/
│ │ ├── button/
│ │ │ ├── button_props.dart
│ │ │ └── button.dart
│ │ └── div.dart
│ └── web.dart
├── pubspec.yaml
├── README.md
└── LICENSE

## Contributing

Contributions are welcome! If you have any suggestions or improvements, please open an issue or submit a pull request.

## Authors

- Henrique Nascimento - Initial work - [@HenriqueNas](https://github.com/henriquenas)

## License

The Wed Framework is licensed under the [MIT License](./LICENSE).

