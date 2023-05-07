/// {@template router_exception}
/// An exception class for routing wed_core the application
/// {@endtemplate}
class RouterException implements Exception {
  /// {@macro router_exception}
  RouterException(this.message);

  /// Custom exception for path not found
  /// {@macro router_exception}
  const RouterException.pathNotFound(String path)
      : message = 'No route found for the given path: $path';

  /// Custom exception for router outlet not found
  /// {@macro router_exception}
  const RouterException.routerOutletNotFound()
      : message = 'No router-outlet HTML tag classe found';

  /// The exception message.
  final String message;

  @override
  String toString() => message;
}
