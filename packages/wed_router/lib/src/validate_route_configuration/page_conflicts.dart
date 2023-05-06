import 'package:path/path.dart' as path;
import 'package:wed_router/wed_router.dart';

/// Type definition for callbacks that report route conflicts.
typedef OnRouteConflict = void Function(
  String originalFilePath,
  String conflictingFilePath,
  String conflictingEndpoint,
);

/// Reports existence of route conflicts on a [PageConfiguration].
void reportRouteConflicts(
  PageConfiguration configuration, {
  /// Callback called when any route conflict is found.
  void Function()? onViolationStart,

  /// Callback called for each route conflict found.
  OnRouteConflict? onRouteConflict,

  /// Callback called when any route conflict is found.
  void Function()? onViolationEnd,
}) {
  final conflictingEndpoints =
      configuration.endpoints.entries.where((entry) => entry.value.length > 1);
  if (conflictingEndpoints.isNotEmpty) {
    onViolationStart?.call();
    for (final conflict in conflictingEndpoints) {
      final originalFilePath = path.normalize(
        path.join('pages', conflict.value.first.path),
      );
      final conflictingFilePath = path.normalize(
        path.join('pages', conflict.value.last.path),
      );
      onRouteConflict?.call(
        originalFilePath,
        conflictingFilePath,
        conflict.key,
      );
    }
    onViolationEnd?.call();
  }
}
