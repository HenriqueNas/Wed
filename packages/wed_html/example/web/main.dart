import 'package:wed_html/wed_html.dart';

void main() {
  final component = Div(
    props: HtmlProps(
      style: CssStyle(
        boxSizing: 'border-box',
        width: const Units.vw(100),
        height: const Units.vh(100),
        alignItems: AlignItems.center,
        justifyContent: JustifyContent.center,
        backgroundColor: Colors.lightGray,
      ).merge(const DisplayFlex.center()),
    ),
    children: [
      RedBox(),
    ],
  );

  renderApp(component);
}

class RedBox extends Div {
  RedBox();

  int _counter = 0;

  void _increase() {
    setState(() {
      _counter++;
    });
  }

  @override
  HtmlProps get props => HtmlProps(
        style: CssStyle(
          width: const Units.px(400),
          height: const Units.px(400),
          padding: const Padding.all(15),
          backgroundColor: Colors.darkBlue,
          borderRadius: const BorderRadius.all(12),
          display: Display.flex,
          flexDirection: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.spaceBetween,
        ),
      );

  @override
  List<NodeComponent> get children => [
        Span(
          'hello form wed_html:',
          props: HtmlProps(
            style: CssStyle(
              color: Colors.white,
              fontSize: Units.px(32),
            ),
          ),
        ),
        Div(
          props: HtmlProps(
            style: DisplayFlex.column(
              gap: Units.px(10),
              alignItems: AlignItems.center,
            ),
          ),
          children: [
            Span(
              'you have clicked:',
              props: HtmlProps(
                style: CssStyle(color: Colors.white),
              ),
            ),
            Span(
              '$_counter times',
              props: HtmlProps(
                style: CssStyle(
                  color: Colors.white,
                  fontSize: Units.px(28),
                ),
              ),
            ),
          ],
        ),
        MyButton(
          onClick: (event) {
            // `print` displays the message in the console.
            print('clicked');
            _increase();
          },
        ),
      ];
}

class MyButton extends Button {
  MyButton({super.onClick}) : super('click me');

  @override
  HtmlProps get props => HtmlProps(
        style: CssStyle(
          backgroundColor: Colors.white,
          padding: const Padding.symmetric(
            vertical: 8,
            horizontal: 18,
          ),
          border: Border.none(),
          borderRadius: const BorderRadius.all(12),
        ),
      );
}
