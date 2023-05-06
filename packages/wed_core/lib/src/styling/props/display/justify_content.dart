import '../../../../wed_core.dart';

enum JustifyContent implements CssBaseEnum {
  flexStart,
  flexEnd,
  center,
  spaceBetween,
  spaceAround,
  spaceEvenly,
  initial,
  inherit;

  @override
  String get value {
    switch (this) {
      case JustifyContent.flexStart:
        return 'flex-start';
      case JustifyContent.flexEnd:
        return 'flex-end';
      case JustifyContent.spaceBetween:
        return 'space-between';
      case JustifyContent.spaceAround:
        return 'space-around';
      case JustifyContent.spaceEvenly:
        return 'space-evenly';
      default:
        return name;
    }
  }
}
