import 'dart:html';

import 'package:wed_core/wed_core.dart';

import 'package:wed_router/wed_router.dart';

/// The root path for the application.
const kRootPath = '/';

/// {@template router}
/// The [Router] class is responsible for managing the routes in the application
/// {@endtemplate}
class Router extends Component {
  /// Creates a new [Router] instance with the given routes.
  Router({
    required this.routes,
  })  : assert(routes.isNotEmpty, 'You must provide at least one route'),
        assert(
          routes.any((route) => route.path == kRootPath),
          'You must provide at least one route with path $kRootPath',
        );

  /// The current path for the application.
  String get currentPath => window.location.pathname ?? kRootPath;

  /// The routes for this router.
  final List<Route> routes;

  /// Returns the [Route] for the current URL path,
  /// Throws an [RouterException] if no route is found.
  Route getRouteByCurrentPath() {
    return routes.firstWhere(
      (route) => route.path == currentPath,
      orElse: () {
        window.console.log('No route found for the given path: $currentPath');
        throw const RouterException.routerOutletNotFound();
      },
    );
  }

  late Route _currentRoute = Route(
    path: routes.first.path,
    component: routes.first.component,
  );

  /// Returns the [Route] for the current URL path,
  Route get currentRoute {
    return _currentRoute;
  }

  /// Returns the [Component] for the given path and data.
  void navigate(String path, {dynamic data}) {
    setState(() {
      _currentRoute = getRouteByCurrentPath();
    });

    window.history.pushState(data, '', path);
  }

  @override
  List<Component> build() {
    window.console.log('Router build for path: $currentPath');

    return [currentRoute.component];
  }
}
