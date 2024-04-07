import 'dart:html';

import 'package:wed_html/wed_html.dart';

///
class OnClick extends HtmlEvents {
  ///
  OnClick(void Function(Event event) callback)
      : super(
          event: MouseEvent('click'),
          callback: callback,
        );
}
