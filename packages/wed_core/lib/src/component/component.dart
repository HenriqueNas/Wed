import 'package:wed_core/wed_core.dart';

/// Void callback.
typedef VoidCallback = void Function();

/// {@template component}
/// The [Component] class is an abstraction for a component that
/// can be rendered to any platform or framework.
///
/// The [setState] method is used to update the state of the component
/// and trigger a re-render.
/// {@endtemplate}
abstract class Component<T extends Props> {
  /// {@macro component}
  const Component({
    required T props,
  }) : _props = props;

  /// The props for this component, extends [Props].
  T get props => _props;
  final T _props;

  /// Updates the state of the component and triggers a re-render.
  void setState(VoidCallback callback) {
    callback();

    _props.style?.update();
  }
}

/// {@template Single_child_component}
/// {@endtemplate}
abstract class SingleChildComponent<T extends Props> extends Component<T> {
  /// {@macro component}
  const SingleChildComponent({
    required super.props,
  });

  /// Returns a list of child components to render.
  Component build();
}

/// {@template multi_children_component}
/// {@endtemplate}
abstract class MultiChildrenComponent<T extends Props> extends Component<T> {
  /// {@macro component}
  const MultiChildrenComponent({
    required super.props,
  });

  /// Returns a list of child components to render.
  List<Component> build();
}
