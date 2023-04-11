import 'dart:html';

import 'package:wed/wed.dart';

final app = querySelector('#output') as DivElement;

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
  WedElement build() {
    return Div(
      props: DivProps(
        styles: CssStyle(
          width: Units.vw(100),
          height: Units.vh(100),
          backgroundColor: 'white',
        ),
      ),
      children: [
        TopBar().root,
        Body().root,
      ],
    );
  }
}

class TopBar extends Component {
  @override
  WedElement build() {
    return Div(
      props: DivProps(
        styles: CssStyle(
          width: Units.vw(100),
          height: Units.vh(10),
          backgroundColor: '#2196F3',
        ).merge(DisplayFlex.center),
      ),
      children: [
        Span(
          'Welcome to WED!',
          props: SpanProps(
            styles: CssStyle(
              color: 'white',
              fontSize: Units.rem(2),
            ),
          ),
        ),
      ],
    );
  }
}

class Body extends Component {
  double _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  WedElement build() {
    return Div(
      props: DivProps(
        styles: CssStyle(
          width: Units.vw(100),
          height: Units.vh(90),
          backgroundColor: '#F5F5F5',
          display: Display.flex,
          flexDirection: FlexDirection.column,
          alignItems: AlignItems.flexEnd,
          justifyContent: JustifyContent.spaceBetween,
          boxSizing: 'border-box',
        ),
      ),
      children: [
        Div(),
        CounterText(_count.toString()).root,
        FloatingActionButton(_increment).root,
      ],
    );
  }
}

class CounterText extends Component {
  CounterText(this.counter);

  final String counter;

  @override
  WedElement build() {
    return Div(
      props: DivProps(
        styles: CssStyle(
          width: Units.vw(100),
        ).merge(DisplayFlex.column).merge(DisplayFlex.center),
      ),
      children: [
        Span(
          'You have pushed the button this many times:',
          props: SpanProps(
            styles: CssStyle(
              color: 'black',
              fontSize: Units.rem(1.5),
            ),
          ),
        ),
        Span(
          counter,
          props: SpanProps(
            styles: CssStyle(
              color: 'black',
              fontSize: Units.rem(2),
            ),
          ),
        ),
      ],
    );
  }
}

class FloatingActionButton extends Component {
  FloatingActionButton(this.onClick);

  final void Function() onClick;

  @override
  WedElement build() {
    return Button(
      props: ButtonProps(
        innerText: '+',
        onClick: (_) => onClick(),
        styles: CssStyle(
          width: Units.rem(5),
          height: Units.rem(5),
          margin: const Margin.all(40),
          borderRadius: const BorderRadius.all(50),
          backgroundColor: '#2196F3',
          borderWidth: Units.none,
          color: 'white',
          fontSize: Units.rem(4),
          boxShadow: '0 0 10px 0 rgba(0, 0, 0, 0.5)',
          cursor: Cursor.pointer,
        ).merge(DisplayFlex.center),
      ),
    );
  }
}
