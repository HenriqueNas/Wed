import '../../../../wed.dart';

class Margin extends EdgeInsets {
  @override
  EdgeInsetsTypes get type => EdgeInsetsTypes.margin;

  const Margin() : super(type: EdgeInsetsTypes.margin);

  const Margin.fromTRLB(
    double top,
    double right,
    double bottom,
    double left,
  ) : super.fromTRLB(
          top,
          right,
          bottom,
          left,
          type: EdgeInsetsTypes.margin,
        );

  const Margin.all([double value = 0])
      : super.all(
          value: value,
          type: EdgeInsetsTypes.margin,
        );

  const Margin.only({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
  }) : super.only(
          top: top,
          right: right,
          bottom: bottom,
          left: left,
          type: EdgeInsetsTypes.margin,
        );

  const Margin.symmetric({
    vertical = 0,
    horizontal = 0,
  }) : super.symmetric(
          vertical: vertical,
          horizontal: horizontal,
          type: EdgeInsetsTypes.margin,
        );
}
