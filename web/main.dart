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
