import 'package:path/path.dart' as p;

/// Convert a file path to an API route.
///
/// ```
/// "../pages/index.dart" -> "/"
/// "../pages/hello.dart" -> "/hello"
/// "../pages/hello/world.dart" -> "/hello/world"
/// "../pages/hello/<name>.dart" -> "/hello/<name>"
/// ```
String pathToPage(String path) {
  final normalizedPath = path.replaceAll(r'\', '/');
  final relativePath =
      p.relative(normalizedPath, from: '../pages').replaceAll(r'\', '/');
  final route = '/${relativePath.split('.dart').first.replaceAll('index', '')}';

  if (route.length > 1 && route.endsWith('/')) {
    return route.substring(0, route.length - 1);
  }

  return route;
}
