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
