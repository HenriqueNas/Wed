import 'dart:html';

import 'package:wed_html/wed_html.dart';

void main() {
  final component = Div(
    props: HtmlProps(
      style: CssStyle(
        width: const Units.px(100),
        height: const Units.px(100),
        backgroundColor: Colors.blue,
      ).merge(const DisplayFlex.center()),
    ),
    children: [
      Div(
        props: HtmlProps(
          style: CssStyle(
            width: const Units.px(50),
            height: const Units.px(50),
            backgroundColor: Colors.red,
          ),
        ),
      )
    ],
  );

  renderApp(component);
}

class MyDiv extends Div {
  @override
  List<NodeComponent<Node, HtmlProps>> build() {
    return <NodeComponent<Node, HtmlProps>>[
      Div(
        props: HtmlProps(
          style: CssStyle(
            width: const Units.px(100),
            height: const Units.px(100),
            backgroundColor: Colors.aliceBlue,
          ).merge(const DisplayFlex.center()),
        ),
      ),
    ];
  }
}
