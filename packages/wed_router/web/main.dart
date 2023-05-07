import 'package:wed_core/wed_core.dart';
import 'package:wed_router/wed_router.dart';

final router = Router(
  routes: [
    Route(
      path: '/',
      component: TestComponent(),
    ),
    Route(
      path: '/other',
      component: OtherComponent(),
    ),
  ],
);

void main() {
  renderApp(router);
}

class TestComponent extends Component {
  @override
  List<Component> build() {
    return [
      Div(
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
              // ignore: avoid_print
              onClick: (_) => router.navigate('/other'),
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
      ),
    ];
  }
}

class OtherComponent extends Component {
  @override
  List<Component> build() {
    return [
      Div(
        props: const DivProps(
          styles: CssStyle(
            backgroundColor: 'purple',
            width: '100px',
            height: '100px',
          ),
        ),
        children: [
          Button(
            props: ButtonProps(
              // ignore: avoid_print
              onClick: (_) => router.navigate('/'),
              innerText: 'Click me',
              disabled: false,
              styles: const CssStyle(
                backgroundColor: 'yellow',
                width: '50px',
                height: '50px',
              ),
            ),
          )
        ],
      ),
    ];
  }
}
