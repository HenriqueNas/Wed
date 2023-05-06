import 'package:path/path.dart' as path;
import 'package:wed_router/wed_router.dart';

/// Type definition for callbacks that report rogue routes.
typedef OnRogueRoute = void Function(String filePath, String idealPath);

/// Reports existence of rogue routes on a [PageConfiguration].
void reportRogueRoutes(
  PageConfiguration configuration, {
  /// Callback called when any rogue route is found.
  void Function()? onViolationStart,

  /// Callback called for each rogue route found.
  OnRogueRoute? onRogueRoute,

  /// Callback called when any rogue route is found.
  void Function()? onViolationEnd,
}) {
  if (configuration.roguePages.isNotEmpty) {
    onViolationStart?.call();
    for (final route in configuration.roguePages) {
      final filePath = path.normalize(path.join('pages', route.path));
      final fileDirectory = path.dirname(filePath);
      final idealPath = path.join(
        fileDirectory,
        path.basenameWithoutExtension(filePath),
        'index.dart',
      );
      onRogueRoute?.call(filePath, idealPath);
    }
    onViolationEnd?.call();
  }
}
