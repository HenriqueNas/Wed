import '../../../wed.dart';

abstract class DisplayFlex {
  static const flex = CssStyle(display: Display.flex);

  static final center = CssStyle(
    display: Display.flex,
    alignItems: AlignItems.center,
    justifyContent: JustifyContent.center,
  );

  static const row = CssStyle(
    display: Display.flex,
    flexDirection: FlexDirection.row,
  );

  static const column = CssStyle(
    display: Display.flex,
    flexDirection: FlexDirection.column,
  );
}
