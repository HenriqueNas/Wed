import 'package:wed_core/wed_core.dart';

/// `void Function()` callback.
typedef VoidCallback = void Function();

/// {@template component}
/// An abstract class representing a Wed component.
/// Components are the building blocks of Wed applications.
/// They can be rendered to any platform or framework.
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
  ///
  /// This method should be called when the component's internal state changes
  /// and needs to be reflected in the UI.
  void setState(VoidCallback callback) {
    callback();
    render();
  }

  /// Renders the component to the target platform or framework.
  ///
  /// This method should be implemented by concrete component classes.
  void render();
}

/// {@template single_child_component}
/// A component that has a single child component.
/// {@endtemplate}
abstract class SingleChildComponent<T extends Props> extends Component<T> {
  /// {@macro single_child_component}
  const SingleChildComponent({
    required super.props,
  });

  /// Returns the child component to render.
  Component build();
}

/// {@template multi_children_component}
/// A component that can have multiple child components.
/// {@endtemplate}
abstract class MultiChildrenComponent<T extends Props> extends Component<T> {
  /// {@macro multi_children_component}
  const MultiChildrenComponent({
    required super.props,
  });

  /// Returns a list of child components to render.
  List<Component> build();
}
