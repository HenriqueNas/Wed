import 'package:wed_core/wed_core.dart';

/// {@template route}
/// The [Route] class represents a single route in the application.
/// {@endtemplate}
class Route {
  /// Creates a new [Route] instance with the given path and component.
  Route({
    required this.path,
    required this.component,
  });

  /// The path for this route.
  final String path;

  /// The component for this route.
  final Component component;

  @override
  String toString() {
    return 'Route(path: $path, component: $component)';
  }
}
