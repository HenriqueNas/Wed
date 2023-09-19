import 'dart:html';

import 'package:wed_dom/wed_dom.dart';

void main() {
  final component = Div(
    props: HtmlGlobalProps(
      style: CssStyle(
        width: const Units.px(100),
        height: const Units.px(100),
        backgroundColor: Colors.blue,
      ).merge(const DisplayFlex.center()),
    ),
    children: [
      Div(
        props: HtmlGlobalProps(
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
  List<NodeComponent<Node, HtmlGlobalProps>> build() {
    return <NodeComponent<Node, HtmlGlobalProps>>[
      Div(
        props: HtmlGlobalProps(
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
