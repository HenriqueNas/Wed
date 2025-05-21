import 'package:test/test.dart';
import 'package:wed_html/wed_html.dart';
import 'dart:html';

void main() {
  group('Aside Component Tests', () {
    test('Renders with correct nodeName', () {
      final aside = Aside();
      document.body!.append(aside.render());
      expect(aside.nodeName, 'ASIDE');
      aside.dispose();
    });

    test('Renders children correctly', () {
      final childText = 'Test Child';
      final aside = Aside(children: [Span(text: childText)]);
      document.body!.append(aside.render());
      
      final spanElement = aside.element.children.firstWhere(
        (element) => element is SpanElement,
        orElse: () => throw StateError('Span child not found'),
      ) as SpanElement;
      
      expect(spanElement.text, childText);
      aside.dispose();
    });

    test('Applies HTML properties correctly', () {
      final testId = 'test-aside';
      final testClass = 'my-aside-class';
      final aside = Aside(props: HtmlProps(id: testId, className: testClass));
      document.body!.append(aside.render());
      
      expect(aside.element.id, testId);
      expect(aside.element.className, testClass);
      aside.dispose();
    });
  });
}
