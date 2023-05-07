# Wed Framework

The Wed Framework is a simple web framework for Dart, inspired by React and using Flutter syntax. It provides a set of basic components and a global method for rendering the application.

A fast, minimalistic backend framework for Dart 🎯

Developed with 💙 by [HenriqueNas][https://github.com/henriquenas] 🦄

## Packages 📦

| Package                                                                                                         | Pub                                                                                                                    |
| --------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| [wed](https://github.com/verygoodopensource/dart_frog/tree/main/packages/dart_frog)                             | [![pub package](https://img.shields.io/pub/v/dart_frog.svg)](https://pub.dev/packages/wed)                             |
| [wed_core](https://github.com/verygoodopensource/dart_frog/tree/main/packages/wed_router)                    | [![pub package](https://img.shields.io/pub/v/wed_router.svg)](https://pub.dev/packages/wed)                         |
| [wed_utils](https://github.com/verygoodopensource/dart_frog/tree/main/packages/dart_frog_cli)                   | [![pub package](https://img.shields.io/pub/v/dart_frog_cli.svg)](https://pub.dev/packages/wed)                         |
| [wed_router](https://github.com/verygoodopensource/dart_frog/tree/main/packages/dart_frog_web_socket)           | [![pub package](https://img.shields.io/pub/v/dart_frog_web_socket.svg)](https://pub.dev/packages/wed)                  |


## Getting Started

### Installing

To use the Wed framework, first you'll need to create a new Dart web project and add the wed package to your _pubspec.yaml_ file:

```yaml
dependencies:
  wed: ^0.0.5
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
  renderApp(MyComponent(), app);
}

class MyComponent extends Component {
  var text = 'Hello World';
  var isClicked = false;

  void toggleText() {
    isClicked = !isClicked;
    text = isClicked ? 'Clicked' : 'Hello World';
  }

  @override
  List<Component> build() {
    return [
      Div(
        props: DivProps(
          styles: CssStyle(
            width: Units.vw(100),
            height: Units.vh(100),
            backgroundColor: 'lightblue',
          ).merge(DisplayFlex.center),
        ),
        children: [
          Button(
            props: ButtonProps(
              innerText: text,
              styles: CssStyle(
                backgroundColor: 'blue',
                fontSize: Units.rem(2),
                color: 'white',
                textAlign: TextAlign.center,
                padding: Padding.symmetric(horizontal: 30, vertical: 20),
                borderRadius: BorderRadius.all(12),
                borderWidth: Units.none,
                cursor: Cursor.pointer,
              ),
              onClick: (_) {
                setState(() {
                  toggleText();
                });
              },
            ),
          ),
        ],
      ),
    ];
  }
}

```

## Classes and Helpers

The `Component` class is the base class for all components, and it contains a basic set of methods for rendering the component and updating its state.

### `Component` Class

The `Component` class contains the following methods:

- `render()`: This method returns a `Widget` object that represents the component's current state.
- `setState()`: This method allows the component's state to be updated, triggering a re-render.

### `CssStyle` Class

The `ComponentBaseProps` class is the base class for all component props classes.

## Contributing

Contributions are welcome! If you have any suggestions or improvements, please open an issue or submit a pull request.

## Authors

- Henrique Nascimento - Initial work - [@HenriqueNas](https://github.com/henriquenas)

## License

The Wed Framework is licensed under the [MIT License](./LICENSE).

