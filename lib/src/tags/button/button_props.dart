import 'package:wed/src/component/component_base_props.dart';

class ButtonProps extends ComponentBaseProps {
  final String? text;
  final Function()? onClick;

  const ButtonProps({
    this.text,
    this.onClick,
    super.styles,
    super.children,
  });
}
