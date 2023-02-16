import 'dart:html';

import 'package:wed/src/tags/button/button.dart';
import 'package:wed/src/tags/button/button_props.dart';
import 'package:wed/wed.dart';

final app = querySelector("#app") as DivElement;

void main() {
  const styles = CssBaseStyle(
    backgroundColor: 'red',
    height: '100px',
    width: '100px',
    alignItems: 'center',
    justifyContent: 'center',
    display: 'flex',
  );

  final child = Button(
    props: ButtonProps(
      text: 'Click me',
      onClick: () => print('Clicked'),
      styles: CssBaseStyle(
        height: '50px',
        width: '150px',
        textAlign: 'center',
      ),
    ),
  );

  final component = Div(
    key: '',
    ref: '',
    props: ComponentBaseProps(
      styles: styles,
      children: [child],
    ),
  );

  renderApp(component, app);
}
