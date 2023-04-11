import '../../wed.dart';
import 'widget.dart';

/// The [Component] class is the base class for all components.
abstract class Component extends Widget<WedElement> {
  /// Creates a new [Component] instance with the given props and children.
  WedElement build();

  /// Updates the state of the component and triggers a re-render.
  void setState(void Function() callback) {
    print('State updated');
    callback();
    build().updateChildren();
  }

  @override
  WedElement get root => build();
}
