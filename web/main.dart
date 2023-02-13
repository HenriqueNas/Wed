import 'dart:html';

import 'package:wed/wed.dart';

final app = querySelector("#app") as Element;

void main() {
  const styles = CssBaseProps(
    backgroundColor: 'red',
    height: '100px',
    width: '100px',
  );

  final child = Div(
    styles: CssBaseProps(
      backgroundColor: 'blue',
      height: '50px',
      width: '50px',
      textAlign: 'center',
    ),
  );

  final component = Div(
    styles: styles,
    children: [child],
  );

  renderApp(component, app);
}
