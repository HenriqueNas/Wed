import 'dart:html';

import 'package:wed/wed.dart';

final app = querySelector('#output') as DivElement;

void main() {
  renderWidget(TestComponent(), app);
}

class TestComponent extends Widget {
  @override
  Widget build() {
    return Div(
      props: const DivProps(
        styles: CssStyle(
          backgroundColor: 'red',
          width: '100px',
          height: '100px',
        ),
      ),
      children: [
        Button(
          props: ButtonProps(
            onClick: (_) => print('clicked'),
            innerText: 'Click me',
            disabled: false,
            styles: const CssStyle(
              backgroundColor: 'blue',
              width: '50px',
              height: '50px',
            ),
          ),
        )
      ],
    );
  }
}
